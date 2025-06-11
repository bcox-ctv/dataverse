from datetime import datetime
import random
from faker import Faker

# Initialize Faker with consistent seed for reproducibility
fake = Faker()

def create_sample_demographics(conn, contact_ids):
    """Create sample demographic records for given contacts"""
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
    demographics_created = 0

    # Create sample records for each contact
    for contact_id in contact_ids:
        case_no = f'CASE{fake.unique.random_number(digits=8):08d}'  # Unique 8-digit case number
        medicare_id = f'MED{fake.unique.random_number(digits=10):010d}'  # 10-digit Medicare ID
        
        cursor.execute('''
            INSERT INTO Demographics (
                caseno,
                MedicareID,
                LivesAlone,
                MEDICAIDENROLLED,
                LegalStatus,
                MEMBERID,
                Rural,
                Poverty,
                ContactID,
                UserStamp,
                DateTimeStamp,
                GenericCheckbox1
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            case_no,
            medicare_id,
            random.choice(lives_alone_options),
            random.choice([0, 1]),  # MEDICAIDENROLLED as bit
            random.choice(legal_status_options),
            fake.random_int(min=1000, max=9999),  # MEMBERID
            random.choice(rural_options),
            random.choice(poverty_options),
            contact_id,  # Link to the contact
            default_user_stamp,
            current_timestamp,
            0  # GenericCheckbox1 default value
        ))
        demographics_created += cursor.rowcount
    
    conn.commit()
    return demographics_created  # Return number of demographic records created
