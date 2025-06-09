import pyodbc
from datetime import datetime, timedelta
import random
import os
from faker import Faker

# Initialize Faker with consistent seed for reproducibility
fake = Faker()
Faker.seed(12345)

def create_connection():
    """Create a database connection to AWS MSSQL"""
    try:
        conn = pyodbc.connect(
            'DRIVER={ODBC Driver 18 for SQL Server};'
            f'SERVER={os.getenv("DB_SERVER")};'
            f'DATABASE={os.getenv("DB_NAME")};'
            f'UID={os.getenv("DB_USER")};'
            f'PWD={os.getenv("DB_PASSWORD")};'
            'TrustServerCertificate=yes;'
        )
        return conn
    except pyodbc.Error as e:
        print(f"Error connecting to database: {e}")
    return None

def create_sample_vendors(conn, num_vendors=50):
    """Create sample vendor records"""
    cursor = conn.cursor()
    
    # Lists for generating realistic healthcare company suffixes
    company_types = ['LLC', 'Inc.', 'Corporation', 'Ltd', 'Partners', 'Associates']
    healthcare_words = ['Health', 'Medical', 'Care', 'Wellness', 'Healthcare', 'Providers']
    
    for _ in range(num_vendors):
        # Generate realistic company and contact information
        company_base = fake.company()
        company_name = f"{company_base} {random.choice(healthcare_words)} {random.choice(company_types)}"
        contact_name = fake.name()
        vendor_no = f'V{fake.unique.random_number(digits=5):05d}'
        tax_id = f'{fake.random_int(min=10, max=99)}-{fake.random_int(min=1000000, max=9999999)}'
        
        # Generate realistic dates within last 5 years
        contract_date = fake.date_between(start_date='-5y', end_date='today')
        
        # 75% chance of being active
        active = random.choices([True, False], weights=[75, 25])[0]
        
        cursor.execute('''
            INSERT INTO Vendors (
                VendorNO, 
                VPUBLIC,
                TAXID,
                CONTACTNAME,
                CURRVCONTRACT,
                DATECONTRACT,
                CONTRACT,
                FOSTERPARENT,
                SECID,
                NOTES,
                MAILTONAME,
                MAILTOCONTACT,
                ACTIVE,
                SAMEMAILTOAS
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            vendor_no,
            random.choice([0, 1]),
            tax_id,
            contact_name,
            1 if active else 0,
            contract_date,
            f'CNT{fake.unique.random_number(digits=5):05d}',
            random.choice([0, 1]),
            f'SEC{fake.unique.random_number(digits=5):05d}',
            fake.paragraph(nb_sentences=2),  # Generate realistic notes
            company_name,
            contact_name,
            1 if active else 0,
            None
        ))
    
    conn.commit()

def main():
    conn = create_connection()
    if conn is not None:
        create_sample_vendors(conn)
        conn.close()
        print("Sample vendor data created successfully")
    else:
        print("Error! Cannot create the database connection.")

if __name__ == '__main__':
    main()