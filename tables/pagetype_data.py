from datetime import datetime
import random
from faker import Faker

def create_sample_pagetype(conn, user_ids, n=5):
    """
    Create sample PageType records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for the UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        label = fake.sentence(nb_words=2)[:255]
        is_chapter_layout_template = random.choice([0, 1])
        uniqueid = fake.uuid4()[:16]
        originalid = fake.uuid4()[:16]
        user_id = random.choice(user_ids)
        cursor.execute('''
            INSERT INTO PageType (
                Label, IsChapterLayoutTemplate, UNIQUEID, ORIGINALID, UserStamp, DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?)
        ''', (
            label, is_chapter_layout_template, uniqueid, originalid, user_id, now
        ))
        count += 1
    conn.commit()
    return count
