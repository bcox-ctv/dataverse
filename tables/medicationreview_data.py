from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_medicationreview(conn, user_ids, vendor_ids, n=20):
    """
    Create sample MEDICATIONREVIEW records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for UserStamp.
    vendor_ids: list of valid VendorIDs for ChapterEntityID and PageEntityID.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        user_id = random.choice(user_ids)
        vendor_id = random.choice(vendor_ids)
        cursor.execute('''
            INSERT INTO MEDICATIONREVIEW (
                DATETIMESTAMP,
                UserStamp,
                ChapterName,
                ChapterEntityID,
                PageName,
                PageEntityID
            ) VALUES (?, ?, ?, ?, ?, ?)
        ''', (
            now,
            user_id,
            "Providers",
            vendor_id,
            "Provider",
            vendor_id
        ))
        count += 1
    conn.commit()
    return count