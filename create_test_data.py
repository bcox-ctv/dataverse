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

def main():
    """Main function to create sample data in all tables"""
    conn = create_connection()
    if conn is not None:
        try:
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