from datetime import datetime
from random import choice
from faker import Faker

def create_sample_notes(conn, user_ids, vendor_ids, n=20):
    """
    Create sample data for the NOTES table, populating only NOT NULL and FK fields.
    Required fields:
      - DATETIMESTAMP (datetime)
      - UserStamp (int, FK to Users)
      - ChapterName (str, always 'Providers')
      - ChapterEntityID (int, FK to Vendors)
      - PageName (str, always 'Provider')
      - EntityID (int, FK to Vendors)
    """
    fake = Faker()
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        user_id = choice(user_ids)
        vendor_id = choice(vendor_ids)
        datetimestamp = datetime.now()
        cursor.execute(
            """
            INSERT INTO NOTES (DATETIMESTAMP, UserStamp, ChapterName, ChapterEntityID, PageName, EntityID)
            VALUES (?, ?, ?, ?, ?, ?)
            """,
            datetimestamp, user_id, "Providers", vendor_id, "Provider", vendor_id
        )
        count += 1
    conn.commit()
    return count
