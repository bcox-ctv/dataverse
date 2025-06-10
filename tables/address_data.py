from datetime import datetime
import random
from faker import Faker

# Initialize Faker with consistent seed for reproducibility
fake = Faker()

def create_sample_addresses(conn, vendor_id, default_user_stamp=1):
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
    
    conn.commit()
    return cursor.rowcount  # Return number of addresses created
