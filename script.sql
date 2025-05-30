
CREATE TABLE dbo.account (
    accountid UNIQUEIDENTIFIER NOT NULL,
    customertypecode VARCHAR(500) NULL,
    accounttype VARCHAR(500) NULL,
    active BIT NULL,
    allowauthoverlap BIT NULL,
    allowenrolloverlap BIT NULL,
    carecoordinationagency VARCHAR(500) NULL,
    corporatecontactname VARCHAR(50) NULL,
    corporatecontactnamename VARCHAR(160) NULL,
    dchprovideriddmanumber VARCHAR(100) NULL,
    excludedfromdropdown BIT NULL,
    extension VARCHAR(100) NULL,
    external_flag BIT NULL,
    inrotation BIT NULL,
    licensedcapacity INT NULL,
    medicaidapproved BIT NULL,
    npinumber VARCHAR(100) NULL,
    providertype VARCHAR(500) NULL,
    shortname VARCHAR(100) NULL,
    taxid VARCHAR(100) NULL
)
CREATE TABLE dbo.dchct_case (
    createdby VARCHAR(50) NULL,
    createdon DATETIME NULL,
    createdonbehalfby VARCHAR(50) NULL,
    dchct_caseenddate DATETIME NULL,
    dchct_caseendreason VARCHAR(100) NULL,
    dchct_caseid UNIQUEIDENTIFIER NOT NULL,
    dchct_casenumber VARCHAR(850) NOT NULL,
    dchct_casestartdate DATETIME NULL,
    dchct_casestatus VARCHAR(100) NULL,
    dchct_casestatusdate DATETIME NULL,
    dchct_clientcontact VARCHAR(50) NULL,
    dchct_clientcontactname VARCHAR(160) NULL,
    dchct_firstcontactdate DATETIME NULL,
    dchct_fundcode VARCHAR(25) NULL,
    dchct_interviewdate DATETIME NULL,
    dchct_referraldate DATETIME NULL,
    dchct_referralsource VARCHAR(100) NULL,
    dchct_referralsourcetype VARCHAR(100) NULL,
    dchct_referredby VARCHAR(50) NULL,
    dchct_referredbyname VARCHAR(160) NULL,
    importsequencenumber INT NULL,
    modifiedby VARCHAR(50) NULL,
    modifiedon DATETIME NULL,
    modifiedonbehalfby VARCHAR(50) NULL,
    overriddencreatedon DATETIME NULL,
    ownerid VARCHAR(50) NOT NULL,
    owningbusinessunit VARCHAR(50) NULL,
    owningteam VARCHAR(50) NULL,
    owninguser VARCHAR(50) NULL,
    statuscode INT NULL,
)
CREATE TABLE dbo.dchct_contactname (
    dchct_contactnameid UNIQUEIDENTIFIER NOT NULL,
    dchct_comment VARCHAR(MAX) NULL,
    dchct_contact VARCHAR(50) NOT NULL,
    dchct_contactname VARCHAR(160) NULL,
    dchct_enddate DATETIME NULL,
    dchct_firstname VARCHAR(100) NULL,
    dchct_lastname VARCHAR(100) NULL,
    dchct_middlename VARCHAR(100) NULL,
    dchct_name VARCHAR(850) NULL,
    dchct_nametype VARCHAR(500) NULL,
    dchct_primary BIT NULL,
    dchct_startdate DATETIME NULL,
)
CREATE TABLE dbo.dchct_contactphone (
    dchct_contactphoneid UNIQUEIDENTIFIER NOT NULL,
    dchct_comment VARCHAR(MAX) NULL,
    dchct_contact VARCHAR(50) NOT NULL,
    dchct_enddate DATETIME NULL,
    dchct_iscallable BIT NULL,
    dchct_isvalid BIT NULL,
    dchct_phonenumber VARCHAR(850) NOT NULL,
    dchct_phonetype VARCHAR(500) NOT NULL,
    dchct_primaryphone BIT NULL,
    dchct_startdate DATETIME NULL,
)

CREATE TABLE dbo.contact (
    contactid UNIQUEIDENTIFIER NOT NULL,
    birthdate DATETIME NULL,
    aimsclientid VARCHAR(20) NULL,
    caseno VARCHAR(100) NULL,
    contacttype VARCHAR(500) NULL,
    dateofbirth DATETIME NULL,
    dateofdeath DATETIME NULL,
    district VARCHAR(100) NULL,
    enddate DATETIME NULL,
    ethnicity VARCHAR(500) NULL,
    excluded BIT NULL,
    extension VARCHAR(100) NULL,
    gender VARCHAR(500) NULL,
    identifiertype VARCHAR(500) NULL,
    identifiervalue VARCHAR(100) NULL,
    legalstatus VARCHAR(500) NULL,
    limitedenglishproficiency BIT NULL,
    livesalone BIT NULL,
    livingarrangements VARCHAR(500) NULL,
    maritalstatus VARCHAR(500) NULL,
    medicaidid VARCHAR(20) NULL,
    medicaidtype VARCHAR(500) NULL,
    medicareid VARCHAR(20) NULL,
    memberid VARCHAR(100) NULL,
    monthlyincome FLOAT NULL,
    monthlyincome_base FLOAT NULL,
    office VARCHAR(500) NULL,
    primaryprovider VARCHAR(50) NULL,
    primaryprovidername VARCHAR(160) NULL,
    race VARCHAR(500) NULL,
    salutation VARCHAR(500) NULL,
    secondarylanguage VARCHAR(500) NULL,
    ssn VARCHAR(11) NULL,
    staffid VARCHAR(100) NULL,
    startdate DATETIME NOT NULL,
    suffix VARCHAR(500) NULL,
    supervisor VARCHAR(50) NULL,
    supervisorname VARCHAR(160) NULL,
    unit VARCHAR(500) NULL,
    user VARCHAR(50) NULL,
    veteranstatus VARCHAR(500) NULL,
    firstname VARCHAR(50) NULL,
    lastname VARCHAR(50) NOT NULL,
    middlename VARCHAR(50) NULL,
    mspp_userpreferredlcid VARCHAR(500) NULL,
)

CREATE TABLE dbo.customeraddress (
    customeraddressid UNIQUEIDENTIFIER NOT NULL,
    addresstypecode VARCHAR(500) NULL,
    city VARCHAR(80) NULL,
    county VARCHAR(50) NULL,
    activeaddress BIT NULL,
    directionstohome VARCHAR(MAX) NULL,
    enddate DATETIME NULL,
    isrural BIT NULL,
    primaryaddress BIT NULL,
    region VARCHAR(100) NULL,
    startdate DATETIME NULL,
    line1 VARCHAR(250) NULL,
    line2 VARCHAR(250) NULL,
    postalcode VARCHAR(20) NULL,
    stateorprovince VARCHAR(50) NULL,
)
CREATE TABLE dbo.dchct_accountaddress (
    dchct_accountaddressid UNIQUEIDENTIFIER NOT NULL,
    dchct_account VARCHAR(50) NULL,
    dchct_addresstype VARCHAR(500) NOT NULL,
    dchct_addressvalid BIT NULL,
    dchct_city VARCHAR(100) NULL,
    dchct_comments VARCHAR(MAX) NULL,
    dchct_dateaddressvalidated DATETIME NULL,
    dchct_enddate DATETIME NULL,
    dchct_primary BIT NULL,
    dchct_startdate DATETIME NULL,
    dchct_state VARCHAR(100) NULL,
    dchct_street VARCHAR(850) NULL,
    dchct_street2 VARCHAR(100) NULL,
)
CREATE TABLE dbo.dchct_accountphone (
    dchct_accountphoneid UNIQUEIDENTIFIER NOT NULL,
    dchct_account VARCHAR(50) NULL,
    dchct_comments VARCHAR(MAX) NULL,
    dchct_description VARCHAR(500) NULL,
    dchct_enddate DATETIME NULL,
    dchct_extension VARCHAR(100) NULL,
    dchct_name VARCHAR(850) NULL,
    dchct_phone VARCHAR(100) NULL,
    dchct_phonefieldlocation VARCHAR(500) NOT NULL,
    dchct_phonetype VARCHAR(500) NOT NULL,
    dchct_primary BIT NULL,
    dchct_startdate DATETIME NULL,
)

CREATE TABLE dbo.dchct_assessments (
    dchct_assessmentsid UNIQUEIDENTIFIER NOT NULL,
    dchct_assessmentadheval VARCHAR(50) NULL,
    dchct_assessmentadhevalname VARCHAR(850) NULL,
    dchct_assessmentid VARCHAR(850) NULL,
    dchct_assessmentname VARCHAR(500) NULL,
    dchct_assessmentstatus VARCHAR(500) NULL,
    dchct_assessmenttype VARCHAR(500) NULL,
    dchct_caseid VARCHAR(50) NULL,
    dchct_casename VARCHAR(850) NULL,
    dchct_client VARCHAR(50) NULL,
    dchct_clientname VARCHAR(160) NULL,
    dchct_locassessmentscareplanrevie VARCHAR(50) NULL,
    dchct_locassessmentscareplanreviename VARCHAR(850) NULL,
    dchct_review_date DATETIME NULL,
    dchct_worker VARCHAR(50) NULL,
    dchct_workername VARCHAR(160) NULL,
)

CREATE TABLE dbo.dchct_credential (
    dchct_credentialid UNIQUEIDENTIFIER NOT NULL,
    dchct_certificationlicensenumber VARCHAR(100) NULL,
    dchct_certificationlicensetype VARCHAR(500) NULL,
    dchct_comment VARCHAR(MAX) NULL,
    dchct_coveragedescription VARCHAR(MAX) NULL,
    dchct_credentialtype VARCHAR(500) NOT NULL,
    dchct_dateofinsurance DATETIME NULL,
    dchct_effectivedate DATETIME NULL,
    dchct_exceptionexclusion VARCHAR(MAX) NULL,
    dchct_expirationdate DATETIME NULL,
    dchct_limitsofliability VARCHAR(MAX) NULL,
    dchct_name VARCHAR(850) NULL,
    dchct_provider VARCHAR(50) NULL,
    dchct_provisional BIT NULL,
    dchct_worker VARCHAR(50) NULL,
)

CREATE TABLE dbo.dchct_email (
    dchct_comment VARCHAR(MAX) NULL,
    dchct_contact VARCHAR(50) NOT NULL,
    dchct_emailaddress VARCHAR(850) NOT NULL,
    dchct_emailid UNIQUEIDENTIFIER NOT NULL,
    dchct_emailtype VARCHAR(500) NULL,
    dchct_enddate DATETIME NULL,
    dchct_primaryemailaddress BIT NULL,
    dchct_startdate DATETIME NULL,
)

CREATE TABLE dbo.dchct_experience (
    dchct_comment VARCHAR(MAX) NULL,
    dchct_creditsceus INT NULL,
    dchct_enddate DATETIME NULL,
    dchct_experienceid UNIQUEIDENTIFIER NOT NULL,
    dchct_experiencetype VARCHAR(500) NOT NULL,
    dchct_name VARCHAR(850) NULL,
    dchct_startdate DATETIME NULL,
    dchct_trainer VARCHAR(100) NULL,
    dchct_trainingexpirationdate DATETIME NULL,
    dchct_trainingname VARCHAR(100) NULL,
    dchct_trainingtype VARCHAR(500) NULL,
    dchct_worker VARCHAR(50) NULL,
)

CREATE TABLE dbo.dchct_linkedproviders (
    dchct_linkedprovidersid UNIQUEIDENTIFIER NOT NULL,
    dchct_enddate DATETIME NULL,
    dchct_linkedprovider VARCHAR(50) NOT NULL,
    dchct_name VARCHAR(850) NULL,
    dchct_originalprovider VARCHAR(50) NULL,
    dchct_relationship VARCHAR(500) NOT NULL,
    dchct_startdate DATETIME NOT NULL,
)
