from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_hisphone(conn, user_ids, page_ids, n=20):
    """
    Create sample HISPhone records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for the UserStamp FK.
    page_ids: list of valid PageIDs for the Page FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        user_id = random.choice(user_ids)
        page_id = random.choice(page_ids)
        phone_number = fake.numerify('##########')
        page_name = fake.slug()[:255]  # Generate a random page name
        page_entity_id = random.randint(1, 10000)  # Generate a random PageEntityID (NOT NULL)
        chapter_name = fake.word().capitalize()[:255]  # Generate a random ChapterName (NOT NULL)
        cursor.execute('''
            INSERT INTO HISPhone (
                [Primary],
                PhoneNumber,
                Active,
                UserStamp,
                DateTimeStamp,
                PageName,
                PageEntityID,
                ChapterName
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            1,  # Primary (BIT, always 1 for sample)
            phone_number,
            1,  # Active (BIT, always 1 for sample)
            user_id,
            now,
            page_name,
            page_entity_id,
            chapter_name
        ))
        count += 1
    conn.commit()
    return count
