import random
from datetime import datetime, timedelta

def create_sample_hispeople(conn, num_records=50, default_user_stamp=1):
    """
    Create sample HISPeople records with required fields and foreign key relationships to Contact table.
    
    Args:
        conn: Database connection object
        num_records: Number of records to create
        default_user_stamp: Default user stamp value
    
    Returns:
        Number of records created
    """
    cursor = conn.cursor()

    # Get existing contact IDs
    cursor.execute("SELECT ContactID FROM Contact")
    contact_ids = [row[0] for row in cursor.fetchall()]

    if not contact_ids:
        print("No Contact records found. Please create Contact records first.")
        return 0

    # Get valid user IDs for UserStamp
    cursor.execute("SELECT USERID FROM Users")
    user_ids = [row[0] for row in cursor.fetchall()]
    
    if not user_ids:
        print("No User records found. Please create User records first.")
        return 0

    # Required fields based on SQL schema:
    # - CreatedBy (NOT NULL)
    # - CreatedOn (NOT NULL)
    # - Userstamp (NOT NULL)
    # - DateTimeStamp (NOT NULL)
    # - ContactID (Foreign key)
    # - ReadOnly (NOT NULL)

    count = 0
    for _ in range(num_records):
        contact_id = random.choice(contact_ids)
        user_id = random.choice(user_ids)
        
        # Generate random dates within a reasonable range
        created_on = datetime.now() - timedelta(days=random.randint(0, 365))

        insert_sql = """
        INSERT INTO HISPeople (
            ContactID, CreatedBy, CreatedOn, Userstamp, DateTimeStamp, ReadOnly, Confidential
        ) VALUES (?, ?, ?, ?, GETDATE(), 0, 0)
        """

        try:
            cursor.execute(insert_sql, (
                contact_id,
                user_id,
                created_on,
                user_id
            ))
            count += 1
        except Exception as e:
            print(f"Error inserting HISPeople record: {e}")
            continue

    conn.commit()
    return count
