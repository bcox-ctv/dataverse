1. Register App in in Azure
    1. log in to https://portal.azure.com
    2. Go to “Azure Active Directory” → “App registrations” → “+ New registration”.
    3. Register a new app:
        * Name: Dataverse Schema Exporter (or similar)
        * Supported account types: Accounts in this organizational directory only (Single tenant)
        * Redirect URI: Leave blank.
    4. After registering:
        * Save the Application (client) ID — we will need this.
    5. Add API Permissions:
        * Click API Permissions → + Add a permission → Dynamics CRM → Delegated permissions → Select user_impersonation.
        * Then Grant admin consent.
    6. Create a Client Secret:
        * Go to Certificates & secrets → + New client secret.
        * Choose an expiration (12 or 24 months).
        * Save the generated secret value immediately.
2. Create an Application User  https://learn.microsoft.com/en-us/power-platform/admin/manage-application-users#create-an-application-user
    1. Sign in to the Power Platform admin center as a System Administrator.
    2. Select Environments, and then select an environment from the list.
    3. Select Settings.
    4. Select Users + permissions, and then select Application users.
    5. Select + New app user to open the Create a new app user page.
    6. Select + Add an app to choose the Client ID created in step 1.4 and then select Add.
    7. The selected Microsoft Entra app is displayed under App. You can select Edit (Edit.) to choose another Microsoft Entra application. Under Business Unit, select a business unit from the dropdown list. 
    8. After choosing a business unit, you can select Edit. for Security roles to choose security roles for the chosen business unit to add to the new application user. After adding security roles, select Save. 
        * Basic User
        * Dataverse Search Role
        * Environment Maker (to pull solution info)
    9. Select Create.
3. Export the solution from dataverse
    
