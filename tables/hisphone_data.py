from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_hisphone(conn, user_ids, vendor_ids, n=20, chapter_name="Providers", page_name="Provider"):
    """
    Create sample HISPhone records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for the UserStamp FK.
    vendor_ids: list of valid VendorIDs for ChapterEntityID and PageEntityID.
    n: number of records to create.
    chapter_name: value for ChapterName (default 'Providers')
    page_name: value for PageName (default 'Provider')
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        user_id = random.choice(user_ids)
        vendor_id = random.choice(vendor_ids)
        phone_number = fake.numerify('##########')
        cursor.execute('''
            INSERT INTO HISPhone (
                [Primary],
                PhoneNumber,
                Active,
                UserStamp,
                DateTimeStamp,
                PageName,
                PageEntityID,
                ChapterName,
                ChapterEntityID
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            1,  # Primary (BIT, always 1 for sample)
            phone_number,
            1,  # Active (BIT, always 1 for sample)
            user_id,
            now,
            page_name,
            vendor_id,  # PageEntityID
            chapter_name,
            vendor_id   # ChapterEntityID
        ))
        count += 1
    conn.commit()
    return count
