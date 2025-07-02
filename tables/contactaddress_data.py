from datetime import datetime
import random
from faker import Faker

def create_sample_contactaddress(conn, contact_ids, default_user_stamp=1, n_per_contact=1):
    """
    Create sample ContactAddress records for a list of ContactIDs.
    Only NOT NULL fields are populated, and ContactID is a FK.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for contact_id in contact_ids:
        for _ in range(n_per_contact):
            cursor.execute('''
                INSERT INTO ContactAddress (
                    [Primary],
                    Active,
                    DateTimeStamp,
                    UserStamp,
                    ContactID
                ) VALUES (?, ?, ?, ?, ?)
            ''', (
                1,  # Primary (BIT, always 1 for sample)
                1,  # Active (BIT, always 1 for sample)
                now,
                default_user_stamp,
                contact_id
            ))
            count += 1
    conn.commit()
    return count
