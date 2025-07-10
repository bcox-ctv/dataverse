from datetime import datetime
import random
from faker import Faker

def create_sample_servicecodes(conn, user_ids, n=20):
    """
    Create sample SERVICECODES records. Only NOT NULL fields are populated.
    user_ids: list of valid User IDs for UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        servicecode = fake.bothify(text='SC####')[:25]
        unittype = fake.word().capitalize()[:100]
        service = fake.word().capitalize()[:100]
        secondarycode = fake.bothify(text='SEC####')[:25]
        active = 1
        datetimestamp = datetime.now()
        authallowed = 1
        ignoreservicetypefilter = 1
        requiregroupnote = 1
        user_id = random.choice(user_ids)
        cursor.execute('''
            INSERT INTO SERVICECODES (
                SERVICECODE,
                UNITTYPE,
                SERVICE,
                SECONDARYCODE,
                ACTIVE,
                DateTimeStamp,
                UserStamp,
                AuthAllowed,
                IgnoreServiceTypeFilter,
                RequireGroupNote
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            servicecode,
            unittype,
            service,
            secondarycode,
            active,
            datetimestamp,
            user_id,
            authallowed,
            ignoreservicetypefilter,
            requiregroupnote
        ))
        count += 1
    conn.commit()
    return count
