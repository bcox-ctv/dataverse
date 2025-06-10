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
        company_name = f"{company_base} {random.choice(healthcare_words)} {random.choice(company_types)}"[:75]  # MAILTONAME: VARCHAR(75)
        contact_name = fake.name()[:50]  # MAILTOCONTACT: VARCHAR(50)
        vendor_no = f'V{fake.unique.random_number(digits=5):05d}'[:50]  # VendorNO: VARCHAR(50)
        tax_id = f'{fake.random_int(min=10, max=99)}-{fake.random_int(min=1000000, max=9999999)}'[:15]  # TAXID: VARCHAR(15)
        
        # Generate realistic dates within last 5 years
        contract_date = fake.date_between(start_date='-5y', end_date='today')
        
        # 75% chance of being active
        active = random.choices([True, False], weights=[75, 25])[0]
        
        # Create contract number with correct length
        contract_num = f'CNT{fake.unique.random_number(digits=5):05d}'[:15]  # CONTRACT: VARCHAR(15)
        
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
                DateTimeStamp,
                AllowAuthOverlap,
                Email,
                County,
                ShortName,
                ProviderType,
                [External],
                Exclude,
                IsAgency,
                NPI,
                MEDICAIDAPP,
                InRotation,
                EXTENSION,
                NUMLICENSEDFOR,
                AllowEnrollOverlap
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            vendor_no,
            random.choice([0, 1]),  # VPUBLIC
            tax_id,
            contact_name,
            1 if active else 0,    # CURRVCONTRACT
            contract_date,
            contract_num,          # CONTRACT: VARCHAR(15)
            random.choice([0, 1]),  # FOSTERPARENT
            f'SEC{fake.unique.random_number(digits=5):05d}'[:15],  # SECID: VARCHAR(15)
            fake.paragraph(nb_sentences=1)[:175],  # NOTES: VARCHAR(175)
            company_name,          # MAILTONAME: VARCHAR(75)
            contact_name,          # MAILTOCONTACT: VARCHAR(50)
            1 if active else 0,    # ACTIVE
            None,                  # SAMEMAILTOAS
            default_user_stamp,
            current_timestamp,
            0,                     # AllowAuthOverlap
            fake.email()[:50],     # Email: VARCHAR(50)
            fake.city()[:100],     # County: VARCHAR(100)
            company_name[:75],     # ShortName: VARCHAR(75)
            'Healthcare Provider'[:100],  # ProviderType: VARCHAR(100)
            0,                     # External
            0,                     # Exclude
            1,                     # IsAgency
            str(fake.random_int(min=1000000000, max=9999999999))[:10],  # NPI: VARCHAR(10)
            random.choice([0, 1]), # MEDICAIDAPP
            random.choice([0, 1]), # InRotation
            str(fake.random_int(min=1000, max=9999))[:9],  # EXTENSION: VARCHAR(9)
            fake.random_int(min=1, max=100),      # NUMLICENSEDFOR
            0                      # AllowEnrollOverlap
        ))
    
    conn.commit()

def create_sample_addresses(conn, vendor_id, default_user_stamp):
    """Create sample address records for a vendor"""
    cursor = conn.cursor()
    
    # Get current timestamp
    current_timestamp = datetime.now()
    
    # Create a primary address for each vendor (enforce field lengths)
    street = fake.street_address()[:100]  # Street: VARCHAR(100)
    street2 = fake.secondary_address()[:100] if random.random() < 0.3 else None  # Street2: VARCHAR(100)
    city = fake.city()[:30]  # City: VARCHAR(30)
    state = fake.state()[:100]  # State: VARCHAR(100)
    zipcode = fake.zipcode()[:10]  # ZipCode: VARCHAR(10)
    
    cursor.execute('''
        INSERT INTO HISAddress (
            AddressType,
            AddressCategory,
            [Primary],
            Street,
            Street2,
            City,
            State,
            ZipCode,
            DateTimeStamp,
            UserStamp,
            Active,
            ChapterName,
            ChapterEntityID,
            PageName,
            PageEntityID,
            Country
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', (
        'Business',    # AddressType
        'Physical',    # AddressCategory
        1,            # Primary
        street,
        street2,
        city,
        state,
        zipcode,
        current_timestamp,
        default_user_stamp,
        1,            # Active (1 = true)
        'Vendors',    # ChapterName
        vendor_id,    # ChapterEntityID references the Vendor
        'Address',    # PageName
        vendor_id,    # PageEntityID references the same Vendor
        'United States'  # Country
    ))

def main():
    conn = create_connection()
    if conn is not None:
        create_sample_vendors(conn)
        # For each vendor, create sample addresses
        cursor = conn.cursor()
        cursor.execute("SELECT VendorID FROM Vendors")
        vendor_ids = [row[0] for row in cursor.fetchall()]
        
        for vendor_id in vendor_ids:
            create_sample_addresses(conn, vendor_id, 1)  # 1 is the default UserStamp used
        conn.commit()
        conn.close()
        print("Sample vendor and address data created successfully")
    else:
        print("Error! Cannot create the database connection.")

if __name__ == '__main__':
    main()