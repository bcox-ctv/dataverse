from datetime import datetime
import random
from faker import Faker

def create_sample_chapter(conn, user_ids, group_ids, n=5):
    """
    Create sample Chapter records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for the UserStamp FK.
    group_ids: list of valid GroupIDs for the GroupID FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        group_id = random.choice(group_ids)
        label = fake.sentence(nb_words=2)[:255]
        chapter_name = fake.word().capitalize()[:255]
        sort_by = random.randint(1, 100)
        qry_ret_val = random.randint(1, 100)
        access_level = random.randint(0, 3)
        visible = 1
        user_required = 1
        system_required = 0
        display_as_chapter = 1
        is_my_harmony = 0
        use_in_wfw = 0
        uniqueid = fake.uuid4()[:16]
        originalid = fake.uuid4()[:16]
        use_page_set = 0
        user_id = random.choice(user_ids)
        cursor.execute('''
            INSERT INTO Chapter (
                GroupID, Label, ChapterName, SortBy, QryRetVal, AccessLevel, Visible, UserRequired, SystemRequired,
                DisplayAsChapter, IsMyHarmony, UseInWFW, UNIQUEID, ORIGINALID, UsePageSet, UserStamp, DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            group_id, label, chapter_name, sort_by, qry_ret_val, access_level, visible, user_required, system_required,
            display_as_chapter, is_my_harmony, use_in_wfw, uniqueid, originalid, use_page_set, user_id, now
        ))
        count += 1
    conn.commit()
    return count
