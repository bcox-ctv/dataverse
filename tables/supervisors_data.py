from datetime import datetime, timedelta
import random

def create_sample_supervisors(conn, member_ids, user_ids, n=10):
    """
    Create sample SUPERVISORS records. Only NOT NULL fields are populated.
    member_ids: list of valid WORKERS.MEMBERID for SUPERVISOR and MEMBERID fields.
    user_ids: list of valid Users.USERID for UserStamp field.
    n: number of records to create.
    """
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        # Pick two different members for SUPERVISOR and MEMBERID
        if len(member_ids) < 2:
            break
        supervisor, member = random.sample(member_ids, 2)
        primarysuper = random.choice([0, 1])
        datetimestamp = datetime.now()
        startdate = datetimestamp - timedelta(days=random.randint(0, 365))
        userstamp = random.choice(user_ids)
        active = 1
        cursor.execute('''
            INSERT INTO SUPERVISORS (
                SUPERVISOR,
                MEMBERID,
                PRIMARYSUPER,
                DATETIMESTAMP,
                StartDate,
                UserStamp,
                Active
            ) VALUES (?, ?, ?, ?, ?, ?, ?)
        ''', (
            supervisor,
            member,
            primarysuper,
            datetimestamp,
            startdate,
            userstamp,
            active
        ))
        count += 1
    conn.commit()
    return count
