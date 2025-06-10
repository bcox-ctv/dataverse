import pyodbc
from datetime import datetime, timedelta
import random
import os
from faker import Faker
import yaml

# Initialize Faker with consistent seed for reproducibility
fake = Faker()
Faker.seed(12345)

def load_settings():
    """Load database settings from settings.yaml"""
    settings_path = os.path.join(os.path.dirname(__file__), 'settings.yaml')
    try:
        with open(settings_path, 'r') as f:
            settings = yaml.safe_load(f)
        return settings['database']
    except FileNotFoundError:
        print(f"Error: {settings_path} not found")
        return None
    except yaml.YAMLError as e:
        print(f"Error parsing settings.yaml: {e}")
        return None
    except KeyError:
        print("Error: Missing 'database' section in settings.yaml")
        return None

def create_connection():
    """Create a database connection to AWS MSSQL"""
    settings = load_settings()
    if not settings:
        return None

    try:
        conn_str = [
            'DRIVER={ODBC Driver 18 for SQL Server}',
            f'SERVER={settings["server"]}',
            f'DATABASE={settings["database"]}',
        ]
        
        if settings.get('integrated_security', False):
            conn_str.append('Trusted_Connection=yes')
            
        conn_str.append('TrustServerCertificate=yes')
        
        conn = pyodbc.connect(';'.join(conn_str))
        return conn
    except pyodbc.Error as e:
        print(f"Error connecting to database: {e}")
        return None
    except KeyError as e:
        print(f"Missing required setting in settings.yaml: {e}")
        return None

def create_sample_vendors(conn, num_vendors=50):
    """Create sample vendor records"""
    cursor = conn.cursor()
    
    # Lists for generating realistic healthcare company suffixes
    company_types = ['LLC', 'Inc.', 'Corporation', 'Ltd', 'Partners', 'Associates']
    healthcare_words = ['Health', 'Medical', 'Care', 'Wellness', 'Healthcare', 'Providers']
    
    # Get current timestamp for all records
    current_timestamp = datetime.now()
    
    # Using a default UserStamp of 1 (assuming this is a valid admin user ID)
    default_user_stamp = 1
    
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
                SAMEMAILTOAS,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
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
            None,
            default_user_stamp,    # Required: UserStamp
            current_timestamp      # Required: DateTimeStamp
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