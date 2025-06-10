from datetime import datetime
import random
from faker import Faker

# Initialize Faker with consistent seed for reproducibility
fake = Faker()

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
            company_name[:25],     # ShortName: VARCHAR(75)
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
    return cursor.rowcount  # Return number of vendors created
