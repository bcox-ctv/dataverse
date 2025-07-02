import pyodbc
import os
import yaml
from datetime import datetime
from tables.vendor_data import create_sample_vendors
from tables.address_data import create_sample_addresses
from tables.demographics_data import create_sample_demographics
from tables.contact_data import create_sample_contacts
from tables.contact_identifier_data import create_sample_contact_identifiers
from tables.user_data import create_sample_users
from tables.worker_data import create_sample_workers
from tables.hispeople_data import create_sample_hispeople
from tables.relatereview_data import create_sample_relatereview
from tables.vendorsworkers_data import create_sample_vendorsworkers
import argparse

def load_settings():
    """Load database settings from settings.yaml"""
    settings_path = os.path.join(os.path.dirname(__file__), 'settings.yaml')
    try:
        with open(settings_path, 'r') as f:
            settings = yaml.safe_load(f)
        return settings['database']
    except FileNotFoundError:
        print(f"Error: {settings_path} not found")
        return None
    except yaml.YAMLError as e:
        print(f"Error parsing settings.yaml: {e}")
        return None
    except KeyError:
        print("Error: Missing 'database' section in settings.yaml")
        return None

def create_connection():
    """Create a database connection to AWS MSSQL"""
    settings = load_settings()
    if not settings:
        return None

    try:
        conn_str = [
            'DRIVER={ODBC Driver 18 for SQL Server}',
            f'SERVER={settings["server"]}',
            f'DATABASE={settings["database"]}',
        ]
        
        if settings.get('integrated_security', False):
            conn_str.append('Trusted_Connection=yes')
            
        conn_str.append('TrustServerCertificate=yes')
        
        conn = pyodbc.connect(';'.join(conn_str))
        return conn
    except pyodbc.Error as e:
        print(f"Error connecting to database: {e}")
        return None
    except KeyError as e:
        print(f"Missing required setting in settings.yaml: {e}")
        return None

def delete_populated_tables(conn):
    """Delete contents of all tables populated by this script, in FK-safe order."""
    cursor = conn.cursor()
    # Order matters: child tables first
    tables = [
        'VENDORSWORKERS',
        'RELATEREVIEW',
        'ContactIdentifier',
        'Demographics',
        'HISPeople',
        'WORKERS',
        'Contact',
        'HISAddress',
        'Vendors',
        'Users'
    ]
    for table in tables:
        try:
            cursor.execute(f"DELETE FROM {table}")
        except Exception as e:
            print(f"Warning: Could not delete from {table}: {e}")
    conn.commit()

def main():
    """Main function to create sample data in all tables"""
    parser = argparse.ArgumentParser(description="Populate GDCH sample data.")
    parser.add_argument('--reset', action='store_true', help='Delete all populated tables before inserting new data')
    args = parser.parse_args()

    conn = create_connection()
    if conn is not None:
        try:
            if args.reset:
                print("\nDeleting contents of populated tables...")
                delete_populated_tables(conn)
                print("✓ All relevant tables cleared.")
                
            print("\nPopulating Users table...")
            num_users = create_sample_users(conn, 10)  # Create 10 users
            print(f"✓ Created {num_users} user records")
            print("\nPopulating Vendors table...")
            num_vendors = create_sample_vendors(conn)
            print(f"✓ Created {num_vendors} vendor records")
            
            print("\nPopulating HISAddress table with vendor addresses...")
            cursor = conn.cursor()
            cursor.execute("SELECT VendorID FROM Vendors")
            vendor_ids = [row[0] for row in cursor.fetchall()]
            
            total_addresses = 0
            for vendor_id in vendor_ids:
                addr_count = create_sample_addresses(conn, vendor_id, 1)  # 1 is the default UserStamp
                total_addresses += addr_count
            print(f"✓ Created {total_addresses} address records")
            
            print("\nPopulating Contact table...")
            num_contacts = create_sample_contacts(conn, 200)  # Create 200 contact records
            print(f"✓ Created {num_contacts} contact records")

            print("\nPopulating Workers table...")
            num_workers = create_sample_workers(conn, 50)  # Create 50 worker records
            print(f"✓ Created {num_workers} worker records")

            print("\nPopulating HISPeople table...")
            num_hispeople = create_sample_hispeople(conn, 50)  # Create 50 HISPeople records
            print(f"✓ Created {num_hispeople} HISPeople records")
            
            print("\nPopulating Demographics table...")
            # Get contact IDs for demographics
            cursor.execute("SELECT ContactID FROM Contact")
            contact_ids = [row[0] for row in cursor.fetchall()]
            
            # Create demographics records with contact IDs
            num_demographics = create_sample_demographics(conn, contact_ids)  # Create demographics for each contact
            print(f"✓ Created {num_demographics} demographic records")
            
            print("\nPopulating ContactIdentifier table...")
            # Create contact identifier records
            num_identifiers = create_sample_contact_identifiers(conn, contact_ids)  # Create identifiers for each contact
            print(f"✓ Created {num_identifiers} contact identifier records")
            
            print("\nPopulating RELATEREVIEW table...")
            # Get case numbers from Demographics table
            cursor.execute("SELECT CASENO FROM Demographics")
            case_numbers = [row[0] for row in cursor.fetchall()]
            
            # Create relationship records using contact IDs and case numbers
            num_relationships = create_sample_relatereview(conn, contact_ids, case_numbers)
            print(f"✓ Created {num_relationships} relationship records")
            
            print("\nPopulating VENDORSWORKERS table...")
            num_vendorsworkers = create_sample_vendorsworkers(conn)  # Create worker assignments for vendors
            print(f"✓ Created {num_vendorsworkers} vendor-worker relationships")
            
            conn.commit()
            print("All sample data created successfully")
            
        except Exception as e:
            print(f"Error creating sample data: {e}")
            conn.rollback()  # Rollback changes if there's an error
        finally:
            conn.close()
    else:
        print("Error! Cannot create the database connection.")

if __name__ == "__main__":
    main()