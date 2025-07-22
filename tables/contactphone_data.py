from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_contactphone(conn, contact_ids, user_ids, n=20):
    """
    Create sample ContactPhone records. Only NOT NULL fields are populated.
    contact_ids: list of valid ContactIDs for ContactID FK.
    user_ids: list of valid User IDs for UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        contact_id = random.choice(contact_ids)
        user_id = random.choice(user_ids)
        active = 1
        primaryyn = 1
        contact_type = fake.word().capitalize()[:100]
        phone_type = random.choice([
            'Home',
            'Fax',
            'Message',
            'Cell',
            'Pager',
            'Work',
            'Modem',
            'TTY/TDD',
            'Voice',
            'Voice/Fax',
            'Voice/TTY/TDD'
        ])
        # Generate a valid phone number, sometimes with extension
        base_phone = fake.numerify(text='###-###-####')
        if random.random() < 0.3:
            ext = fake.numerify(text='x####')
            phone_number = f"{base_phone} {ext}"
        else:
            phone_number = base_phone
        phone_valid = random.choice([0, 1])
        phone_callable = random.choice([0, 1])
        # Generate a start date in the past (up to 5 years ago)
        start_date = now - timedelta(days=random.randint(1, 5*365))
        cursor.execute('''
            INSERT INTO ContactPhone (
                ContactID,
                Active,
                PrimaryYN,
                ContactType,
                PhoneType,
                PhoneNumber,
                PhoneValid,
                PhoneCallable,
                StartDate,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            contact_id,
            active,
            primaryyn,
            contact_type,
            phone_type,
            phone_number,
            phone_valid,
            phone_callable,
            start_date,
            user_id,
            now
        ))
        count += 1
    conn.commit()
    return count
