import random
from datetime import datetime, timedelta
from faker import Faker
import hashlib

fake = Faker()

def generate_password_hash(password, salt=None):
    """Generate SHA256 hash for password"""
    if not salt:
        salt = fake.uuid4()[:64]  # Generate 64-char salt
    hash_input = password + salt
    password_hash = hashlib.sha256(hash_input.encode()).hexdigest()
    return password_hash, salt

def create_sample_users(conn, num_users=10):
    """Create sample user records.
    
    Args:
        conn: Database connection
        num_users: Number of users to create
    
    Returns:
        Number of users created
    """
    cursor = conn.cursor()
    count = 0
    
    for _ in range(num_users):
        # Generate a username (required)
        username = fake.user_name()
        password = fake.password()
        password_hash, salt = generate_password_hash(password)
        
        # Set up auth levels (0-3 range for different authorizations)
        auth_level = random.randint(0, 3)
        
        cursor.execute('''
            INSERT INTO Users (
                TXTUSERID,         -- Required
                ID,
                TXTUSERAUTH,
                TXTPWD,
                ACCESSR,
                CONSUMERAUTH,
                SERVICESAUTH,
                PROVIDERAUTH,
                MAINTENANCEAUTH,
                SCHEDULERAUTH,
                PLANAUTH,
                FIPSAUTH,
                APPTYPE,
                AttemptNum,
                ChangePwd,
                DATETIMESTAMP,     -- Required
                ExpiresOn,
                PwdLastChanged,
                StartDate,         -- Required
                EndDate,
                UserStamp,         -- Required
                PasswordHash,
                PasswordDate,
                LockedOut,
                Logins,
                FailedLogins,
                SaveReminderInMins,
                Salt,
                UserAccess,
                ForgotPasswordCodeRequestCount,  -- Required
                IsPwdUpgradedToSHA256,
                LockoutDateTimeStamp,
                AdminLockout
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            username,           # TXTUSERID
            random.randint(1000, 9999),  # ID
            auth_level,        # TXTUSERAUTH
            None,              # TXTPWD (using hash instead)
            str(auth_level),   # ACCESSR
            auth_level,        # CONSUMERAUTH
            auth_level,        # SERVICESAUTH
            auth_level,        # PROVIDERAUTH
            auth_level,        # MAINTENANCEAUTH
            auth_level,        # SCHEDULERAUTH
            auth_level,        # PLANAUTH
            None,             # FIPSAUTH
            'WEB',            # APPTYPE
            0,                # AttemptNum
            0,                # ChangePwd
            datetime.now(),    # DATETIMESTAMP
            datetime.now() + timedelta(days=90),  # ExpiresOn
            datetime.now(),    # PwdLastChanged
            datetime.now(),    # StartDate
            None,             # EndDate
            1,                # UserStamp
            password_hash,    # PasswordHash
            datetime.now(),    # PasswordDate
            False,            # LockedOut
            0,                # Logins
            0,                # FailedLogins
            15,               # SaveReminderInMins
            salt,             # Salt
            'STANDARD',       # UserAccess
            0,                # ForgotPasswordCodeRequestCount
            True,             # IsPwdUpgradedToSHA256
            None,             # LockoutDateTimeStamp
            False             # AdminLockout
        ))
        count += 1
        
    conn.commit()
    return count
