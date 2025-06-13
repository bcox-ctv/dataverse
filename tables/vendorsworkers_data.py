from datetime import datetime
import random

def create_sample_vendorsworkers(conn, default_user_stamp=1):
    """Create sample VENDORSWORKERS records linking workers to vendors.
    
    Args:
        conn: Database connection
        default_user_stamp: Default user ID to use for UserStamp field
        
    Returns:
        Number of records created
    """
    cursor = conn.cursor()
    current_timestamp = datetime.now()
    vendorsworkers_created = 0
    
    # Get all vendor IDs
    cursor.execute("SELECT VendorID FROM Vendors WHERE ACTIVE = 1")
    vendor_ids = [row[0] for row in cursor.fetchall()]
    
    # Get all worker IDs (MEMBERID from WORKERS table)
    cursor.execute("SELECT MEMBERID FROM WORKERS WHERE ACTIVE = 1")
    worker_ids = [row[0] for row in cursor.fetchall()]
    
    if not vendor_ids or not worker_ids:
        return 0
        
    # For each vendor, assign some workers
    for vendor_id in vendor_ids:
        # Assign 1-5 workers to each vendor
        num_workers = random.randint(1, 5)
        
        # Randomly select workers for this vendor
        selected_workers = random.sample(worker_ids, min(num_workers, len(worker_ids)))
        
        for worker_id in selected_workers:
            # Create the vendor-worker relationship
            cursor.execute('''
                INSERT INTO VENDORSWORKERS (
                    VENDORID,
                    MEMBERID,
                    ACTIVE,
                    DATETIMESTAMP,
                    ReportingUnit,
                    AppType,
                    EndDate,
                    StartDate,
                    generictext1,
                    genericdate1,
                    genericdate2,
                    genericdate3,
                    genericdate4,
                    UserStamp,
                    upload,
                    download,
                    PrimaryProvider,
                    ExcludeAPSInvestigator,
                    ExcludeAPSScreener,
                    ExcludeAPSIntakeWorker
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                vendor_id,
                worker_id,
                1,  # ACTIVE
                current_timestamp,
                'MAIN' if random.random() < 0.7 else None,  # ReportingUnit
                'STD',  # AppType
                None,  # EndDate - currently active workers
                current_timestamp,  # StartDate
                None,  # generictext1
                None,  # genericdate1
                None,  # genericdate2
                None,  # genericdate3
                None,  # genericdate4
                default_user_stamp,
                random.choice([0, 1]),  # upload
                random.choice([0, 1]),  # download
                1 if random.random() < 0.3 else 0,  # PrimaryProvider - 30% chance
                0,  # ExcludeAPSInvestigator
                0,  # ExcludeAPSScreener
                0   # ExcludeAPSIntakeWorker
            ))
            vendorsworkers_created += cursor.rowcount

    conn.commit()
    return vendorsworkers_created
