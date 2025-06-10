import pyodbc
import os
import yaml
from datetime import datetime
from tables.vendor_data import create_sample_vendors
from tables.address_data import create_sample_addresses
from tables.demographics_data import create_sample_demographics

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
            # Create vendors
            num_vendors = create_sample_vendors(conn)
            print(f"Created {num_vendors} vendor records")
            
            # Create addresses for each vendor
            cursor = conn.cursor()
            cursor.execute("SELECT VendorID FROM Vendors")
            vendor_ids = [row[0] for row in cursor.fetchall()]
            
            total_addresses = 0
            for vendor_id in vendor_ids:
                addr_count = create_sample_addresses(conn, vendor_id, 1)  # 1 is the default UserStamp
                total_addresses += addr_count
            print(f"Created {total_addresses} address records")
            
            # Create demographics records
            num_demographics = create_sample_demographics(conn, 200)  # Create 200 demographic records
            print(f"Created {num_demographics} demographic records")
            
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