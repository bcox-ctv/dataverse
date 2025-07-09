from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_contactname(conn, contact_ids, user_ids, n=20):
    """
    Create sample ContactName records. Only NOT NULL fields are populated.
    contact_ids: list of valid ContactIDs for ContactID FK (must be from Contact table).
    user_ids: list of valid User IDs for UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        # Always use a valid ContactID from the Contact table
        contact_id = random.choice(contact_ids)
        user_id = random.choice(user_ids)
        active = 1
        primaryyn = 1
        contact_type = fake.word().capitalize()[:100]
        cursor.execute('''
            INSERT INTO ContactName (
                ContactID,
                Active,
                PrimaryYN,
                ContactType,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?)
        ''', (
            contact_id,
            active,
            primaryyn,
            contact_type,
            user_id,
            now
        ))
        count += 1
    conn.commit()
    return count
