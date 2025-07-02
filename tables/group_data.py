from datetime import datetime
import random
from faker import Faker

def create_sample_group(conn, user_ids, n=5):
    """
    Create sample Group records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for the UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        group_name = fake.company()[:300]
        datetimestamp = now
        apptype = 'GDCH'
        access_level = random.randint(0, 3)
        allow_cross_program_access = 1
        is_template = 0
        is_harmony_main_secure = 0
        is_parent = random.choice([0, 1])  # Always populate isParent
        user_stamp = random.choice(user_ids)
        uniqueid = fake.uuid4()[:16]
        originalid = fake.uuid4()[:16]
        cursor.execute('''
            INSERT INTO [Group] (
                GroupName, DateTimeStamp, AppType, AccessLevel, AllowCrossProgramAccess, IsTemplate, IsHarmonyMainSecure, isParent, UserStamp, UNIQUEID, ORIGINALID
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            group_name, datetimestamp, apptype, access_level, allow_cross_program_access, is_template, is_harmony_main_secure, is_parent, user_stamp, uniqueid, originalid
        ))
        count += 1
    conn.commit()
    return count
