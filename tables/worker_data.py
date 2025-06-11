from datetime import datetime, timedelta
import random
from faker import Faker

# Initialize Faker with consistent seed for reproducibility 
fake = Faker()

# Constants for worker data
UNIT_OPTIONS = ['Unit A', 'Unit B', 'Unit C', 'Administration', 'Support Services']
OFFICE_OPTIONS = ['Main Office', 'North Branch', 'South Branch', 'East Branch', 'West Branch']
DEGREE_OPTIONS = [
    'High School Diploma',
    'Associate\'s Degree',
    'Bachelor\'s Degree',
    'Master\'s Degree',
    'Ph.D.',
    'M.D.',
    'Other'
]
LICENSE_OPTIONS = [
    'RN',
    'LPN',
    'LCSW',
    'LMHC',
    'MD',
    'None'
]

def create_sample_workers(conn, num_workers=50, default_user_stamp=1):
    """Create sample worker records
    
    Args:
        conn: Database connection
        num_workers: Number of worker records to create
        default_user_stamp: Default user ID to use for UserStamp field
        
    Returns:
        Number of workers created
    """
    cursor = conn.cursor()
    workers_created = 0
    current_timestamp = datetime.now()
    
    for _ in range(num_workers):
        # Generate start date within last 10 years
        start_date = fake.date_time_between(start_date='-10y', end_date='now')
        
        # 10% chance of having an end date
        end_date = None
        active = True
        if random.random() < 0.10:
            end_date = fake.date_time_between(start_date=start_date, end_date='now')
            active = False

        # Generate staff ID
        staff_id = f'EMP{fake.unique.random_number(digits=5):05d}'[:30]  # STAFFID: VARCHAR(30)

        # Generate other fields with appropriate probabilities
        highest_degree = random.choice(DEGREE_OPTIONS) if random.random() < 0.9 else None
        unit = random.choice(UNIT_OPTIONS) if random.random() < 0.95 else None
        office = random.choice(OFFICE_OPTIONS) if random.random() < 0.95 else None
        license_type = random.choice(LICENSE_OPTIONS) if random.random() < 0.7 else None
        exclude = random.choices([True, False], weights=[10, 90])[0]  # 10% chance of being excluded
        comments = fake.paragraph() if random.random() < 0.3 else None  # 30% chance of having comments
        
        # Generic text fields (35 chars) - optional
        generic_text1 = fake.text(max_nb_chars=35) if random.random() < 0.2 else None
        generic_text2 = fake.text(max_nb_chars=35) if random.random() < 0.2 else None
        
        cursor.execute('''
            INSERT INTO WORKERS (
                STARTDATE,
                ENDDATE,
                STAFFID,
                COMMENTS,
                DATETIMESTAMP,
                ACTIVE,
                HIGHESTDEGREE,
                UNIT,
                OFFICE,
                EXCLUDE,
                LICENSE,
                GENERICTEXT1,
                GENERICTEXT2
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            start_date,
            end_date,
            staff_id,
            comments,
            current_timestamp,  # DATETIMESTAMP is NOT NULL
            1 if active else 0,  # ACTIVE is NOT NULL
            highest_degree,
            unit,
            office,
            1 if exclude else 0,  # EXCLUDE is NOT NULL
            license_type,
            generic_text1,
            generic_text2
        ))
        workers_created += cursor.rowcount

    conn.commit()
    return workers_created
