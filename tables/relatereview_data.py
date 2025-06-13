from datetime import datetime, timedelta
import random
from faker import Faker

fake = Faker()

def create_sample_relatereview(conn, contact_ids, case_numbers):
    """Create sample RELATEREVIEW records with proper relationships.
    
    Args:
        conn: Database connection
        contact_ids: List of valid contact IDs to use
        case_numbers: List of valid case numbers from Demographics table
        
    Returns:
        Number of records created
    """
    cursor = conn.cursor()
    current_timestamp = datetime.now()
    relatereview_created = 0
    
    # Constants for data generation
    relationships = {
        'Family': [
            'Parent', 'Child', 'Spouse', 'Sibling', 'Grandparent', 
            'Grandchild', 'Aunt/Uncle', 'Niece/Nephew', 'Cousin'
        ],
        'Legal': [
            'Legal Guardian', 'Power of Attorney', 'Representative Payee',
            'Case Manager', 'Social Worker', 'Attorney'
        ],
        'Other': [
            'Friend', 'Neighbor', 'Professional Contact', 'Caregiver',
            'Emergency Contact', 'Other'
        ]
    }

    # For each case number, decide if it will have relationships
    # About 70% of cases will have relationships
    for case_no in case_numbers:
        # Skip this case 30% of the time
        if random.random() < 0.3:
            continue
            
        # Get the contact ID associated with this case number from Demographics
        cursor.execute('''
            SELECT ContactID 
            FROM Demographics 
            WHERE CASENO = ?
        ''', (case_no,))
        result = cursor.fetchone()
        if not result:
            continue
            
        case_contact_id = result[0]
        
        # Get available contact IDs excluding the case's contact
        available_contacts = [c for c in contact_ids if c != case_contact_id]
        
        # Create 1-3 relationships for this case
        for _ in range(random.randint(1, 3)):
            # Select a contact ID that's not associated with the case
            if not available_contacts:
                continue
            contact_id = random.choice(available_contacts)
            available_contacts.remove(contact_id)  # Don't reuse the same contact
            
            # Randomly select relationship category and type
            category = random.choice(list(relationships.keys()))
            relationship = random.choice(relationships[category])
            
            # Set begin date within last 5 years
            begin_date = current_timestamp - timedelta(days=random.randint(0, 365 * 5))
            
            # 20% chance of having an end date
            end_date = None
            if random.random() < 0.2:
                end_date = begin_date + timedelta(days=random.randint(30, 365 * 2))
                
            # Set emergency contact and legal guardian based on relationship type
            is_emergency = 1 if (category == 'Family' and random.random() < 0.6) or relationship == 'Emergency Contact' else 0
            is_legal_guardian = 1 if relationship in ['Legal Guardian', 'Power of Attorney'] else 0
            
            # Create the relationship record with all required fields
            cursor.execute('''
                INSERT INTO RELATEREVIEW (
                    CASENO,
                    CONTACTID,
                    RELATIONSHIP,
                    EMERGENCYCONTACT,
                    LEGALGUARDIAN,
                    COMMENTS,
                    DATETIMESTAMP,
                    ASSISTANCE,
                    BeginDate,
                    EndDate,
                    UserStamp
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                case_no,  # NOT NULL
                contact_id,  # NOT NULL
                relationship,
                is_emergency,
                is_legal_guardian,
                fake.text(max_nb_chars=100) if random.random() < 0.3 else None,  # 30% chance of comments
                current_timestamp,  # NOT NULL
                random.randint(0, 100) if random.random() < 0.5 else None,  # 50% chance of assistance level
                begin_date,
                end_date,
                1  # Default user stamp (NOT NULL)
            ))
            relatereview_created += cursor.rowcount
    
    conn.commit()
    return relatereview_created
