from datetime import datetime
import random
from faker import Faker

# Initialize Faker with consistent seed for reproducibility
fake = Faker()

# Constants for realistic data generation
TITLES = ['Mr.', 'Mrs.', 'Ms.', 'Dr.', 'Rev.']
LANGUAGES = ['English', 'Spanish', 'French', 'Mandarin', 'Vietnamese', 'Arabic', 'Korean']
GENDERS = ['M', 'F', 'O']
RACES = ['White', 'Black or African American', 'Asian', 'American Indian/Alaska Native', 
         'Native Hawaiian/Pacific Islander', 'Two or More Races']
ETHNICITIES = ['Hispanic or Latino', 'Not Hispanic or Latino']
VETERAN_STATUS = ['Veteran', 'Non-Veteran', 'Active Duty', 'Reserve']
MARITAL_STATUS = ['Single', 'Married', 'Divorced', 'Widowed', 'Separated']
SALUTATIONS = ['Dear', 'Hello', 'Hi', 'Greetings']
SUFFIXES = ['Jr.', 'Sr.', 'II', 'III', 'IV', 'Ph.D.', 'M.D.']

def generate_ssn():
    """Generate a valid-format SSN"""
    return f"{fake.random_int(min=100, max=999)}-{fake.random_int(min=10, max=99)}-{fake.random_int(min=1000, max=9999)}"

def create_sample_contacts(conn, num_contacts=100, default_user_stamp=1):
    """Create sample contact records"""
    cursor = conn.cursor()
    current_timestamp = datetime.now()
    contacts_created = 0

    for _ in range(num_contacts):
        # Generate basic personal info
        dob = fake.date_of_birth(minimum_age=18, maximum_age=90)
        has_died = random.random() < 0.05  # 5% chance of being deceased
        dod = fake.date_between(start_date=dob, end_date='today') if has_died else None

        # Generate address and contact info
        street = fake.street_address()[:100]
        street2 = fake.secondary_address()[:100] if random.random() < 0.3 else None
        city = fake.city()[:50]
        state = fake.state()[:2]
        zipcode = fake.zipcode()[:10]
        
        # Generate clean phone numbers (no extensions)
        def clean_phone():
            return fake.numerify('##########')  # Generate 10 digit phone number
            
        work_phone = clean_phone()
        cell_phone = clean_phone()
        message_phone = clean_phone() if random.random() < 0.5 else None  # 50% chance of having message phone
        extension = str(fake.random_int(min=100, max=9999)) if random.random() < 0.3 else None

        # Language preferences
        preferred_language = random.choice(LANGUAGES)
        spoken_language = random.choice(LANGUAGES)
        interpreter_needed = preferred_language != 'English'

        cursor.execute('''
            INSERT INTO Contact (
                TITLE,
                FIRSTNAME,
                MIDDLENAME,
                LASTNAME,
                DOB,
                EMAIL,
                PHONE,
                STREET,
                STREET2,
                CITY,
                STATE,
                COUNTRY,
                ZIPCODE,
                WORKPHONE,
                CELLPHONE,
                MESSAGEPHONE,
                PLANGUAGE,
                DOD,
                SSN,
                GENDER,
                RACE,
                ETHNICITYLOOKUP,
                SLANGUAGE,
                InterpreterNeeded,
                VeteranStatus,
                EXTENSION,
                CURMARSTATUS,
                SALUTATION,
                Suffix,
                DISTRICT,
                DateTimeStamp,
                UserStamp,
                Confidential
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            random.choice(TITLES),
            fake.first_name()[:50],
            fake.first_name()[:50] if random.random() < 0.3 else None,  # 30% chance of middle name
            fake.last_name()[:50],
            dob,
            fake.email()[:100],
            clean_phone(),  # Clean 10-digit phone number
            street,
            street2,
            city,
            state,
            'United States',
            zipcode,
            work_phone,
            cell_phone,
            message_phone,
            preferred_language,
            dod,
            generate_ssn(),
            random.choice(GENDERS),
            random.choice(RACES),
            random.choice(ETHNICITIES),
            spoken_language,
            1 if interpreter_needed else 0,
            random.choice(VETERAN_STATUS),
            extension,
            random.choice(MARITAL_STATUS),
            random.choice(SALUTATIONS),
            random.choice(SUFFIXES) if random.random() < 0.2 else None,  # 20% chance of suffix
            fake.random_int(min=1, max=10),  # District number
            current_timestamp,
            default_user_stamp,
            0  # Confidential (always 0)
        ))
        contacts_created += cursor.rowcount

    return contacts_created
