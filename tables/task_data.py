from datetime import datetime, timedelta
import random

def create_sample_task(conn, wordmerge_ids, n=10):
    """
    Create sample TASK records. Only NOT NULL fields are populated.
    wordmerge_ids: list of valid WORDMERGEDOCS.MERGEID for WordMergeID field.
    n: number of records to create.
    """
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        wordmerge_id = random.randint(1000, 9999)
        datetimestamp = datetime.now() - timedelta(days=random.randint(0, 365))
        cursor.execute('''
            INSERT INTO TASK (
                WordMergeID,
                DateTimeStamp
            ) VALUES (?, ?)
        ''', (
            wordmerge_id,
            datetimestamp
        ))
        count += 1
    conn.commit()
    return count
