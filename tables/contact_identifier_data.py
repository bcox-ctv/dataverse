import random
from datetime import datetime, timedelta
from faker import Faker

fake = Faker()

IDENTIFIER_TYPES = [
    "AIMS Client ID",
    "Alien",
    "DL", 
    "Medicaid",
    "SIN",
    "SSN",
    "Unknown",
    "Other",
    "Insurance",
    "Medicare",
    "KAECSES Client ID"
]

def generate_identifier_value(identifier_type):
    """Generate appropriate identifier value based on type."""
    if identifier_type == "SSN":
        return fake.ssn().replace("-", "")
    elif identifier_type == "Medicaid":
        return fake.numerify("########")
    elif identifier_type == "Medicare":
        return f"{''.join(random.choices('0123456789', k=9))}"
    elif identifier_type == "DL":
        return fake.bothify("?######", letters="ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    elif identifier_type == "Alien":
        return fake.numerify("A#########")
    elif identifier_type == "SIN":
        return "".join(random.choices('0123456789', k=9))
    elif identifier_type in ["AIMS Client ID", "KAECSES Client ID"]:
        return fake.numerify("##########")
    else:
        return fake.uuid4()

def create_sample_contact_identifiers(conn, contact_ids, num_identifiers=None):
    """Create sample contact identifier records.
    
    Args:
        conn: Database connection
        contact_ids: List of valid contact IDs to reference
        num_identifiers: Optional number of identifiers to create (defaults to num contacts)
    
    Returns:
        Number of identifiers created
    """
    if not num_identifiers:
        num_identifiers = len(contact_ids)
        
    cursor = conn.cursor()
    
    # Get actual user IDs from Users table
    cursor.execute("SELECT USERID FROM Users")
    user_ids = [row[0] for row in cursor.fetchall()]
    if not user_ids:
        raise ValueError("No users found in Users table. Please create users first.")
        
    count = 0
    
    for _ in range(num_identifiers):
        contact_id = random.choice(contact_ids)
        identifier_type = random.choice(IDENTIFIER_TYPES)
        
        cursor.execute('''
            INSERT INTO ContactIdentifier (
                ContactID,
                Active,
                PrimaryYN,
                StartDate,
                EndDate,
                Comment,
                ContactType,
                IdentifierType,
                IdentifierValue,
                UserStamp,
                DateTimeStamp
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', (
            contact_id,
            1,  # Active
            1 if random.random() < 0.2 else 0,  # PrimaryYN
            datetime.now() - timedelta(days=random.randint(0, 365)),  # StartDate
            None,  # EndDate
            fake.text(max_nb_chars=100) if random.random() < 0.3 else None,  # Comment
            random.choice(["Client", "Resource", "Provider"]),  # ContactType
            identifier_type,
            generate_identifier_value(identifier_type),
            random.choice(user_ids),  # UserStamp
            datetime.now()  # DateTimeStamp
        ))
        count += 1
        
    conn.commit()
    return count
