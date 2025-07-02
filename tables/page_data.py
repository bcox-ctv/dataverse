from datetime import datetime
import random
from faker import Faker

def create_sample_page(conn, chapter_ids, pagetype_ids, user_ids, n=10):
    """
    Create sample Page records. Only NOT NULL fields are populated, FKs respected.
    chapter_ids: list of valid ChapterIDs
    pagetype_ids: list of valid PageTypeIDs
    user_ids: list of valid User IDs for UserStamp
    n: number of records to create
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        chapter_id = random.choice(chapter_ids)
        pagetype_id = random.choice(pagetype_ids)
        user_id = random.choice(user_ids)
        label = fake.sentence(nb_words=3)[:255]
        page_name = fake.slug()[:255]
        access_level = random.randint(0, 3)
        visible = 1
        user_required = 1
        is_default = 0
        app_type = 'GDCH'
        system_required = 0
        display_in_tab = 1
        use_in_wfw = 0
        is_chapter_header = 0
        is_wfw_call_page = 0
        show_in_group_setup = 1
        uniqueid = fake.uuid4()[:16]
        originalid = fake.uuid4()[:16]
        # PageSetID is nullable, so omit for now
        cursor.execute('''
            INSERT INTO Page (
                ChapterID, PageTypeID, Label, PageName, AccessLevel, Visible, UserRequired, IsDefault,
                DateTimeStamp, AppType, SystemRequired, DisplayInTab, UseInWFW, IsChapterHeader, IsWFWCallPage,
                ShowInGroupSetup, UserStamp, UNIQUEID, ORIGINALID
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            chapter_id, pagetype_id, label, page_name, access_level, visible, user_required, is_default,
            now, app_type, system_required, display_in_tab, use_in_wfw, is_chapter_header, is_wfw_call_page,
            show_in_group_setup, user_id, uniqueid, originalid
        ))
        count += 1
    conn.commit()
    return count
