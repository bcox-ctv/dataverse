from datetime import datetime
import random
from faker import Faker

# Initialize Faker with consistent seed for reproducibility
fake = Faker()

def create_sample_demographics(conn, num_records=100):
    """Create sample demographic records"""
    cursor = conn.cursor()
    
    # Lists for generating realistic demographic data
    lives_alone_options = ['Yes', 'No', 'Unknown']
    legal_status_options = ['Adult', 'Minor', 'Guardian', 'Power of Attorney', 'Other']
    rural_options = ['Urban', 'Rural', 'Suburban', 'Unknown']
    poverty_options = ['Above Poverty Line', 'Below Poverty Line', 'Unknown']
    
    # Get current timestamp for all records
    current_timestamp = datetime.now()
    
    # Using a default UserStamp of 1 (assuming this is a valid admin user ID)
    default_user_stamp = 1
    
    for _ in range(num_records):
        # Generate Medicare ID in format "1AB2-CD3-EF45"
        medicare_id = f"{fake.random_int(1000, 9999)}-{fake.random_letter()}{fake.random_letter()}{fake.random_digit()}-{fake.random_letter()}{fake.random_letter()}{fake.random_digit()}{fake.random_digit()}"[:25]
        
        cursor.execute('''
            INSERT INTO DEMOGRAPHICS (
                MedicareID,
                LivesAlone,
                MEDICAIDENROLLED,
                LegalStatus,
                MEMBERID,
                Rural,
                Poverty,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            medicare_id,
            random.choice(lives_alone_options),
            random.choice([0, 1]),  # MEDICAIDENROLLED as bit
            random.choice(legal_status_options),
            fake.random_int(min=1000, max=9999),  # MEMBERID
            random.choice(rural_options),
            random.choice(poverty_options),
            default_user_stamp,
            current_timestamp
        ))
    
    conn.commit()
    return cursor.rowcount  # Return number of demographic records created
