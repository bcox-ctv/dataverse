from datetime import datetime
import random
from faker import Faker

def create_sample_notesrecipients(conn, user_ids, n=20):
    """
    Create sample NOTESRECIPIENTS records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for UserStamp.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        user_id = random.choice(user_ids)
        datetimestamp = datetime.now()
        cursor.execute('''
            INSERT INTO NOTESRECIPIENTS (
                DateTimestamp,
                UserStamp
            ) VALUES (?, ?)
        ''', (
            datetimestamp,
            user_id
        ))
        count += 1
    conn.commit()
    return count
