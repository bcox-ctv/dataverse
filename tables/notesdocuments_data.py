from datetime import datetime
import random

def create_sample_notesdocuments(conn, note_ids, user_ids, n=10):
    """
    Create sample NotesDocuments records.
    Only NOT NULL fields are populated, and all FK constraints are satisfied.
    Args:
        conn: pyodbc connection
        note_ids: list of valid NoteID values (from NOTES table)
        user_ids: list of valid USERID values (from Users table)
        n: number of records to create
    Returns:
        int: number of records created
    """
    cursor = conn.cursor()
    count = 0
    for _ in range(n):
        note_id = random.choice(note_ids) if note_ids else None
        user_stamp = random.choice(user_ids) if user_ids else None
        instance_guid = f"IG{random.randint(100000,999999)}"
        now = datetime.now()
        # Only NOT NULL fields: NotesDocumentsID (IDENTITY), InstanceGuid, others are nullable
        cursor.execute(
            """
            INSERT INTO NotesDocuments (
                NoteID, UserStamp, InstanceGuid, DateTimeStamp
            ) VALUES (?, ?, ?, ?)
            """,
            note_id, user_stamp, instance_guid, now
        )
        count += 1
    conn.commit()
    return count
