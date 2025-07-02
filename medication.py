import csv
import requests
from export import get_access_token, get_env_variable
import uuid
import json

# Insert data into Dataverse using the access token method
def add_data_to_dataverse(access_token, unique_entries, dataverse_url, tablename):
    batch_uuid = f"batch_{uuid.uuid4()}"
    headers = {
        'Authorization': f'Bearer {access_token}',
        'Accept': 'application/json',
        'Content-Type': 'multipart/mixed; boundary="{batch_uuid}"',

    }
    batch_data = ""
    for name in unique_entries:
        data = {
            "requests": [
                {
                    "method": "POST",
                    "url": f"{dataverse_url}/api/data/v9.2/{tablename}",
                    "headers": {
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    "body": json.dumps({
                        "dchct_name": name
                    })
                }
            ]
        }

        # Create a batch request
        batch_data += f'--{batch_uuid}\r\n'
        batch_data += 'Content-Type: application/http\r\n'
        batch_data += 'Content-Transfer-Encoding: binary\r\n\r\n'
        batch_data += json.dumps(data) + '\r\n'
        batch_data += f'--{batch_uuid}--\r\n'
   
    target = f'{dataverse_url}/api/data/v9.2/{tablename}/$batch'
    response = requests.post(
        target,
        headers=headers,
        json=data
    )
    if response.status_code != 204:
        print(f"Batch insertion failed with status code {response.status_code}: {response.text}")
    else:
        print("Batch insertion successful.")

# Example usage
if __name__ == "__main__":
    client_id = get_env_variable("client_id")
    client_secret = get_env_variable("client_secret")
    tenant_id = get_env_variable("tenant_id")
    dataverse_url = "https://gamap-dev.crm9.dynamics.com"
    scope = f"{dataverse_url}/.default"

    # Path to the input file
    input_file = '/Users/briancox/Downloads/ndctext/product.txt'

    # Read the tab-delimited file and prepare unique values
    unique_entries = set()
    with open(input_file, 'r', encoding='utf-8') as file:
        reader = csv.DictReader(file, delimiter='\t')
        # File is already opened with the correct encoding above
        for row in reader:
            product_type_name = row.get('PRODUCTTYPENAME', '').strip()
            if product_type_name in {
            'HUMAN PRESCRIPTION DRUG',
            'HUMAN OTC DRUG',
            'VACCINE',
            'PLASMA DERIVATIVE',
            'CELLULAR THERAPY'
            }:
                proprietary_name = row.get('PROPRIETARYNAME', '').strip()
                nonproprietary_name = row.get('NONPROPRIETARYNAME', '').strip()
                if proprietary_name:
                    unique_entries.add(proprietary_name)
                if nonproprietary_name:
                    unique_entries.add(nonproprietary_name)



    access_token = get_access_token(client_id, tenant_id, client_secret, scope)
    add_data_to_dataverse(access_token, unique_entries, dataverse_url, 'dchct_medications')
