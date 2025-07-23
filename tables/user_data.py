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

def create_sample_users(conn, worker_ids, num_users=10):
    """Create sample user records, each referencing a valid WORKERS ID."""
    cursor = conn.cursor()
    count = 0
    for _ in range(num_users):
        username = fake.user_name()
        password = fake.password()
        password_hash, salt = generate_password_hash(password)
        auth_level = random.randint(0, 3)
        worker_id = random.choice(worker_ids) if worker_ids else random.randint(1000, 9999)
        cursor.execute('''
            INSERT INTO Users (
                TXTUSERID,
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
                DATETIMESTAMP,
                ExpiresOn,
                PwdLastChanged,
                StartDate,
                EndDate,
                UserStamp,
                PasswordHash,
                PasswordDate,
                LockedOut,
                Logins,
                FailedLogins,
                SaveReminderInMins,
                Salt,
                UserAccess,
                ForgotPasswordCodeRequestCount,
                IsPwdUpgradedToSHA256,
                LockoutDateTimeStamp,
                AdminLockout
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            username,
            worker_id,
            auth_level,
            None,
            str(auth_level),
            auth_level,
            auth_level,
            auth_level,
            auth_level,
            auth_level,
            auth_level,
            None,
            'WEB',
            0,
            0,
            datetime.now(),
            datetime.now() + timedelta(days=90),
            datetime.now(),
            datetime.now(),
            None,
            1,
            password_hash,
            datetime.now(),
            False,
            0,
            0,
            15,
            salt,
            'STANDARD',
            0,
            True,
            None,
            False
        ))
        count += 1
    conn.commit()
    return count
