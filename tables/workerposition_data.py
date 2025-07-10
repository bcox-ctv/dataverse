from datetime import datetime, timedelta
import random
from faker import Faker

def create_sample_workerposition(conn, member_ids, user_ids, n=20):
    """
    Create sample WorkerPosition records. Only NOT NULL fields are populated.
    member_ids: list of valid MemberIDs for MemberID FK.
    user_ids: list of valid User IDs for UserStamp FK.
    n: number of records to create.
    """
    fake = Faker()
    cursor = conn.cursor()
    now = datetime.now()
    count = 0
    for _ in range(n):
        member_id = random.choice(member_ids)
        user_id = random.choice(user_ids)
        position = fake.job()[:100]
        position_start = now - timedelta(days=random.randint(0, 365))
        cursor.execute('''
            INSERT INTO WorkerPosition (
                MemberID,
                Position,
                PositionStartDate,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?)
        ''', (
            member_id,
            position,
            position_start,
            user_id,
            now
        ))
        count += 1
    conn.commit()
    return count
