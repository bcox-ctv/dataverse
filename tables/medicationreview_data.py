from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_medicationreview(conn, demographics_ids, user_ids, n=20):
    """
    Create sample MEDICATIONREVIEW records. Only NOT NULL fields are populated.
    demographics_ids: list of valid CASENO values for Demographics FK.
    user_ids: list of valid User IDs for UserStamp.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        caseno = random.choice(demographics_ids)
        user_id = random.choice(user_ids)
        review_date = now - timedelta(days=random.randint(0, 365))
        medication_name = fake.lexify(text='Medication ???')
        # Adjust field names/types as per your schema
        cursor.execute('''
            INSERT INTO MEDICATIONREVIEW (
                CASENO,        -- FK to Demographics, NOT NULL
                ReviewDate,    -- NOT NULL
                MedicationName,-- NOT NULL
                UserStamp,     -- NOT NULL, FK to Users
                DateTimeStamp  -- NOT NULL
            ) VALUES (?, ?, ?, ?, ?)
        ''', (
            caseno,
            review_date,
            medication_name,
            user_id,
            now
        ))
        count += 1
    conn.commit()
    return count