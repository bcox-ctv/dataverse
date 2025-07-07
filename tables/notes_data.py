from datetime import datetime
from random import choice, randint
from faker import Faker

def create_sample_notes(conn, user_ids, chapter_names, chapter_entity_ids, page_names, entity_ids, n=20):
    """
    Create sample data for the NOTES table, populating only NOT NULL and FK fields.
    Required fields:
      - DATETIMESTAMP (datetime)
      - UserStamp (int, FK to Users)
      - ChapterName (str, FK to Chapter)
      - ChapterEntityID (int, FK to Chapter)
      - PageName (str, FK to Page)
      - EntityID (int, FK to Page)
    """
    fake = Faker()
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        user_id = choice(user_ids)
        chapter_name = choice(chapter_names)
        chapter_entity_id = choice(chapter_entity_ids)
        page_name = choice(page_names)
        entity_id = choice(entity_ids)
        datetimestamp = datetime.now()
        cursor.execute(
            """
            INSERT INTO NOTES (DATETIMESTAMP, UserStamp, ChapterName, ChapterEntityID, PageName, EntityID)
            VALUES (?, ?, ?, ?, ?, ?)
            """,
            datetimestamp, user_id, chapter_name, chapter_entity_id, page_name, entity_id
        )
        count += 1
    conn.commit()
    return count
