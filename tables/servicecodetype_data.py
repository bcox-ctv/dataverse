from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_servicecodetype(conn, service_ids, user_ids, n=20):
    """
    Create sample ServiceCodeType records. Only NOT NULL fields are populated.
    service_ids: list of valid ServiceIDs for ServiceID FK.
    user_ids: list of valid User IDs for UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        service_id = random.choice(service_ids)
        servicetypecode = fake.word().capitalize()[:100]
        apptype = fake.lexify(text='A####')[:5]
        user_id = random.choice(user_ids)
        datetimestamp = datetime.now()
        cursor.execute('''
            INSERT INTO ServiceCodeType (
                ServiceID,
                ServiceTypeCode,
                AppType,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?)
        ''', (
            service_id,
            servicetypecode,
            apptype,
            user_id,
            datetimestamp
        ))
        count += 1
    conn.commit()
    return count
