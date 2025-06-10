import os
import pdfplumber
import pandas as pd
import re
import num2words

# Path to the PDF file
pdf_path = os.path.expanduser("~/Downloads/legacy_dd.pdf")

def extract_tables_with_titles(pdf_path):
    tables = []
    current_table_name = "unknown_table"
    current_df_columns = None
    prev_table_name = None

    with pdfplumber.open(pdf_path) as pdf:
        for page in pdf.pages:
            prev_table_name = current_table_name
            text_lines = page.extract_text().split('\n') if page.extract_text() else []
            page_tables = page.extract_tables()
            
            # Find all lines with the word 'columns' (case-insensitive)
            found_new_table = False
            # Find table name from header
            for line in text_lines:
                if "WellSkyHumanServices8.9.2" in line:
                    current_table_name = line.split("WellSkyHumanServices8.9.2")[1].strip()
                    if current_table_name != prev_table_name:
                        found_new_table = True
                        # prev_table_name = current_table_name
                    break
                elif "WSHSDataDictionary" in line:
                    current_table_name = line.split("WSHSDataDictionary")[1].strip()
                    if current_table_name != prev_table_name:
                        found_new_table = True
                        # prev_table_name = current_table_name
                    break
                
            # Process the tables on this page
            if len(page_tables) >= 1:
                has_columns_or_fk = False
                for i, line in enumerate(text_lines):
                    if re.search(r'^Columns\b', line, re.IGNORECASE):
                        has_columns_or_fk = True
                        if i > 0:
                            # If we find a new table name, save the previous one if it exists
                            if current_df_columns is not None:
                                tables.append((prev_table_name, current_df_columns))
                                current_df_columns = None
                        break


                df_columns = pd.DataFrame(page_tables[0][1:], columns=page_tables[0][0])
                
                # If we're continuing a previous table, append the new rows
                if not found_new_table and current_df_columns is not None and len(current_df_columns.columns) == len(df_columns.columns):
                    current_df_columns = pd.concat([current_df_columns, df_columns], ignore_index=True)
                else:
                    # If we had a previous table, save it
                    if current_df_columns is not None:
                        tables.append((current_table_name, current_df_columns))
                    current_df_columns = df_columns
                
                # Handle foreign keys table if present
                if len(page_tables) >= 2:
                    df_fks = pd.DataFrame(page_tables[1][1:], columns=page_tables[1][0])
                    # Store foreign keys for later use
                    if current_df_columns is not None and not df_fks.empty:
                        tables.append((current_table_name, current_df_columns))
                        tables.append((f"{current_table_name}_foreign_keys", df_fks))
                        current_df_columns = None
                elif (len(page_tables) == 1 and len(page_tables[0][0]) < 5):
                    df_fks = pd.DataFrame(page_tables[0][1:], columns=page_tables[0][0])
                    if current_df_columns is not None:
                        tables.append((f"{current_table_name}_foreign_keys", df_fks))
                        current_df_columns = None
    # Don't forget to append the last table if it exists
    if current_df_columns is not None:
        tables.append((current_table_name, current_df_columns))
    
    return tables

def parse_table_to_sql(table_name, df):
    #  SQL reserved words to Escape
    sql_reserved_words = {'order', 'group', 'limit', 'select', 'where', 'from', 'table', \
                            'index', 'primary', 'key', 'update', 'delete', 'insert', 'values', \
                            'constraint', 'external', 'default', 'function', 'database', 'view', 'add'}
        
    # Assumes columns: Field Name, Data Type, Length, Nullable, Description
    sql_lines = []
    if "_foreign_keys" in table_name:
        # Expect columns: Field Name, References Table, References Field, (optional) Description
        for i, row in df.iterrows():
            
            # Create dependency if there are only 2 columns or the 2nd column of 3 is blank
            if (len(row) == 2) or (len(row) == 3 and not str(row[1]).strip()):
                # The relevant foreign key info is in the last column
                ref_info = str(row[-1]).strip()
                field = ""
                ref_table = ""
                ref_field = ""
                # Handle both formats: ActivityID->Activity.[ActivityID and AgencyID->[dbo.[Vendors.[VendorID
                match = re.match(r"(.+?)(?:->|->(?:\[dbo\.\[)?)\s*([^.\[]+)(?:\.|(?:\.\[))(?:\[?)(.+?)(?:\])?$", ref_info)
                if match:
                    field = match.group(1).strip()
                    ref_table = match.group(2).strip()
                    ref_field = match.group(3).strip()
                
                if ref_table.lower() in sql_reserved_words:
                    ref_table = f'[{ref_table}]'

                if field and ref_table and ref_field:
                    base_table = table_name.replace("_foreign_keys", "")
                    fk_stmt = (
                        f"ALTER TABLE {base_table} "
                        f"ADD FOREIGN KEY ({field}) REFERENCES {ref_table}({ref_field});"
                    )
                    sql_lines.append(fk_stmt)
        return sql_lines
    columns = []
    # Drop the first column (assumed to be an index or irrelevant)
    # df = df.iloc[:, 1:]

    identity_col = -1
    fk_constraint = ""
    for i, row in df.iterrows():
        
        identity = ""
        if i == 0 and "Identity" in [col.replace('\n', '') for col in df.columns]:
            identity_col = next((i for i, col in enumerate(df.columns) if col.replace('\n', '').lower().startswith("ident")), -1)
        if identity_col != -1:
            identity = "IDENTITY(1,1)" if identity_col != -1 and str(row[identity_col]).strip() != "" else ""
        if len(row) == 9:
            field = str(row[1]).replace('\n', ' ').strip().replace(' ', '')
            dtype = str(row[2]).replace('\n', ' ').strip().replace(' ', '').upper() if len(row) > 2 else ""
            length = str(row[4]).strip().upper() if len(row) > 4 else ""
            nullable = str(row[5]).strip().upper() if len(row) > 5 else "YES"
            # identity = "IDENTITY(1,1)" if len(row) > identity_col and str(row[identity_col]).strip().upper() != "" else ""
        elif len(row) >6 or df.columns[0] == "Key":
            field = str(row[1]).replace('\n', ' ').strip().replace(' ', '')
            dtype = str(row[2]).replace('\n', ' ').strip().replace(' ', '').upper() if len(row) > 2 else ""
            length = str(row[3]).strip() if len(row) > 3 else ""
            nullable = str(row[4]).strip().upper() if len(row) > 4 else "YES"
            # identity = "IDENTITY(1,1)" if len(row) > identity_col and str(row[identity_col]).strip().upper() != "" else ""
        else:
            field = str(row[0]).replace('\n', ' ').strip().replace(' ', '')
            dtype = str(row[1]).replace('\n', ' ').strip().replace(' ', '').upper() if len(row) > 1 else ""
            length = str(row[2]).strip().upper() if len(row) > 2 else ""
            nullable = str(row[3]).strip().upper() if len(row) > 3 else "YES"

        # Remove leading digits and underscore after them
        field = re.sub(r'^\d+_?', '', field) \
            .replace('-', '').replace('_', '').replace('/', '').replace(' ', '')
        if "CHAR" in dtype or "TEXT" in dtype:
            if length and length.lower() == 'max':
                sql_type = "VARCHAR(MAX)"
            else:
                sql_type = f"VARCHAR({length})" if length else "VARCHAR(MAX)"
        elif "INT" in dtype or "D_ID" in dtype or "[DBO.[D_ID" in dtype or "[DBO.[D_I" in dtype:
            sql_type = "INT"
        elif "DATE" in dtype:
            sql_type = "DATETIME"  # or DATE if you only need date
        elif "DECIMAL" in dtype  or "[DBO.[DOLLARAMOUN" in dtype:
            sql_type = f"DECIMAL(18,2)"
        elif "NUMERIC" in dtype:
            sql_type = dtype
        elif "DBO.[D_LOOKUP" in dtype:
            sql_type = f"VARCHAR({length})" if length else "VARCHAR(MAX)"
        elif "BIT" in dtype or "BOOLEAN" in dtype:
            sql_type = "BIT"
            length = ""
        else:
            if length and length.lower() == 'max':
                sql_type = "VARCHAR(MAX)"
            else:
                sql_type = f"VARCHAR({length})" if length else "VARCHAR(MAX)"

        null_str = "NOT NULL" if (nullable == "NOT NULL" or nullable == "NOT\nNULL") else "NULL"


        if identity != "":
            fk_constraint = (f"    Constraint PK_{field}_{table_name} PRIMARY KEY CLUSTERED ({field})".strip())

        if field.lower() in sql_reserved_words:
            field = f'[{field}]'
        
        columns.append(f"    {field} {sql_type} {identity} {null_str}".strip())


    if table_name.lower() in sql_reserved_words:
        table_name = f'[{table_name}]'
        
    if fk_constraint != "":
            columns.append(fk_constraint)
    if columns:
        sql = f"CREATE TABLE {table_name} (\n" + ",\n".join(columns) + "\n);"
        sql_lines.append(sql)
    return sql_lines

tables = extract_tables_with_titles(pdf_path)

table_creates = []
foreign_keys = []

for table_name, df in tables:
    if not table_name.startswith("RSAExportSubmissions"):
        sql_stmts = parse_table_to_sql(table_name, df)
        # Separate foreign key constraints from table creates
        for stmt in sql_stmts:
            if stmt.startswith('ALTER TABLE'):
                foreign_keys.append(stmt)
            else:
                table_creates.append(stmt)

# Write SQL statements to a file with foreign keys at the end
output_path = "db_create.sql"
with open(output_path, "w") as f:
    # First write all table creates
    for stmt in table_creates:
        f.write(stmt + "\n\n")
    
    # Then write all foreign key constraints
    f.write("\n-- Adding Foreign Key Constraints\n\n")
    for stmt in foreign_keys:
        f.write(stmt + "\n\n")
