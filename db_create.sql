CREATE TABLE ActivityClaimLink (
ActivityClaimLinkID INT IDENTITY(1,1) NOT NULL,
ActivityID INT  NOT NULL,
ClaimGUID VARCHAR(300)  NOT NULL,
ClaimID INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Constraint PK_ActivityClaimLinkID_ActivityClaimLink PRIMARY KEY CLUSTERED (ActivityClaimLinkID)
);

CREATE TABLE ActivityDetail (
ActivityDetailID INT IDENTITY(1,1) NOT NULL,
ActivityID INT  NOT NULL,
ScreenDesignID INT  NOT NULL,
ScreenScaleID INT  NOT NULL,
Score NUMERIC(10,0)  NULL,
Item VARCHAR(MAX)  NULL,
LookupValue VARCHAR(50)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ActivityDetailID_ActivityDetail PRIMARY KEY CLUSTERED (ActivityDetailID)
);

CREATE TABLE ActivityPayments (
ActivityPaymentID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
ActivityID NUMERIC(10,0)  NOT NULL,
ClaimPaymentID NUMERIC(10,0)  NULL,
CheckPaymentID NUMERIC(10,0)  NULL,
Amount NUMERIC(14,2)  NULL,
Comment VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_ActivityPaymentID_ActivityPayments PRIMARY KEY CLUSTERED (ActivityPaymentID)
);

CREATE TABLE ActivityReimbursementLink (
ActivityReimbursementLinkID INT IDENTITY(1,1) NOT NULL,
ActivityID INT  NOT NULL,
ReimbursementItemID INT  NOT NULL,
LinkCategory VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
LockActivity BIT  NULL,
AreaPlanUnitCost NUMERIC(19,2)  NULL,
AreaPlanTotalCost NUMERIC(19,2)  NULL,
AreaPlanISComboCodeID INT  NULL,
AreaPlanFundingSourceID INT  NULL,
ActivityUnit NUMERIC(19,2)  NULL,
Constraint PK_ActivityReimbursementLinkID_ActivityReimbursementLink PRIMARY KEY CLUSTERED (ActivityReimbursementLinkID)
);

CREATE TABLE ActivityTime (
ActivityTimeID INT IDENTITY(1,1) NOT NULL,
StartTime DATETIME  NOT NULL,
EndTime DATETIME  NOT NULL,
ActivityID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ActivityTimeID_ActivityTime PRIMARY KEY CLUSTERED (ActivityTimeID)
);

CREATE TABLE Activity (
ActivityID INT IDENTITY(1,1) NOT NULL,
OpenID INT  NOT NULL,
EnrollID INT  NULL,
AuthServiceID INT  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
MemberID INT  NOT NULL,
PayerID INT  NULL,
Location VARCHAR(100)  NULL,
FacilityID INT  NULL,
PlaceOfService VARCHAR(100)  NULL,
ContactType VARCHAR(MAX)  NULL,
Status VARCHAR(100)  NULL,
Confidential BIT  NULL,
Attended BIT  NULL,
AbsenceReason VARCHAR(100)  NULL,
VServiceID INT  NOT NULL,
UnitCost NUMERIC(19,2)  NOT NULL,
Unit NUMERIC(19,2)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
VENDORGROUPID INT  NULL,
VendorGroupNote VARCHAR(MAX)  NULL,
BatchNumber VARCHAR(100)  NULL,
SubmitDate DATETIME  NULL,
DiagCode1 INT  NULL,
DiagCode2 INT  NULL,
DiagCode3 INT  NULL,
DiagCode4 INT  NULL,
SubmitterClaimID VARCHAR(38)  NULL,
ClaimProviderID INT  NULL,
CardSwiped VARCHAR(30)  NULL,
WalkIn BIT  NULL,
Comment VARCHAR(1000)  NULL,
GroupSeriesID INT  NULL,
ContractNo VARCHAR(50)  NULL,
ActivitySource VARCHAR(50)  NULL,
Cost NUMERIC(19,2)  NULL,
Type VARCHAR(100)  NULL,
CareGiverRecipientID INT  NULL,
ISComboCodeID INT  NULL,
ConsumerServed INT  NULL,
UnitsPerConsumer NUMERIC(19,2)  NULL,
AgencyID INT  NULL,
ServiceProviderID INT  NULL,
InternalProgramID INT  NULL,
AdminExpenseAmount NUMERIC(10,2)  NULL,
CreateDateTime DATETIME  NOT NULL,
AreaPlanUnitCost NUMERIC(19,2)  NULL,
AreaPlanTotalCost NUMERIC(19,2)  NULL,
AreaPlanISComboCodeID INT  NULL,
AreaPlanFundingSourceID INT  NULL,
AreaPlanFiscalYearID INT  NULL,
CurrentAPReimbursementID INT  NULL,
CurrentAPReimbursementStatus VARCHAR(100)  NULL,
Locked BIT  NULL,
ParentProviderID INT  NULL,
DeliveredViaEVV VARCHAR(50)  NULL,
MemberIDRenderingWorker INT  NULL,
EVVBillable BIT  NULL,
Valid BIT  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericText3 VARCHAR(MAX)  NULL,
GenericText4 VARCHAR(MAX)  NULL,
GroupName VARCHAR(50)  NULL,
GroupNumber VARCHAR(1000)  NULL,
SessionNumber VARCHAR(3000)  NULL,
SessionWorker2 INT  NULL,
SessionWorker3 INT  NULL,
PaymentDate DATETIME  NULL,
GenericText5 VARCHAR(MAX)  NULL,
GenericText6 VARCHAR(MAX)  NULL,
GenericText7 VARCHAR(MAX)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericNumeric1 NUMERIC(18,0)  NULL,
GenericNumeric2 NUMERIC(18,0)  NULL,
GenericNumeric3 NUMERIC(18,0)  NULL,
GenericCurrency1 VARCHAR(8)  NULL,
GenericCurrency2 VARCHAR(8)  NULL,
GenericCurrency3 VARCHAR(8)  NULL,
ClaimXMLGen BIT  NOT NULL,
ClaimsComments VARCHAR(MAX)  NULL,
Constraint PK_ActivityID_Activity PRIMARY KEY CLUSTERED (ActivityID)
);

CREATE TABLE AdjustmentCode (
AdjustmentCodeID INT IDENTITY(1,1) NOT NULL,
GroupCode VARCHAR(25)  NOT NULL,
ReasonCode VARCHAR(50)  NOT NULL,
Description VARCHAR(1000)  NULL,
Level VARCHAR(25)  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AdjustmentCodeID_AdjustmentCode PRIMARY KEY CLUSTERED (AdjustmentCodeID)
);

CREATE TABLE AgedCategories (
LOWAGED INT  NOT NULL,
HIGHAGED INT  NULL,
AGEDCAT VARCHAR(15)  NULL
);

CREATE TABLE AGEGROUPS (
AGEGROUP VARCHAR(25)  NOT NULL,
LOWAGE NUMERIC(4,2)  NULL,
HIGHAGE NUMERIC(4,2)  NULL,
COUNT INT  NULL
);

CREATE TABLE AgencyProviderProgram (
AgencyProviderProgramID INT IDENTITY(1,1) NOT NULL,
AgencyID INT  NOT NULL,
VendorID INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Active BIT  NOT NULL,
Constraint PK_AgencyProviderProgramID_AgencyProviderProgram PRIMARY KEY CLUSTERED (AgencyProviderProgramID)
);

CREATE TABLE AllowableExpenseAccount (
AllowableExpenseAccountID INT IDENTITY(1,1) NOT NULL,
AreaPlanAccountID INT  NOT NULL,
AreaPlanFundingSourceID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
ProgramService VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Reimursable VARCHAR(100)  NULL,
IncludeInExpenseSubtotals VARCHAR(10)  NOT NULL,
Constraint PK_AllowableExpenseAccountID_AllowableExpenseAccount PRIMARY KEY CLUSTERED (AllowableExpenseAccountID)
);

CREATE TABLE AllowableFundingSource (
AllowableFundingSourceID INT IDENTITY(1,1) NOT NULL,
AreaPlanProgramFundingID INT  NOT NULL,
AreaPlanFundingSourceID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AllowableFundingSourceID_AllowableFundingSource PRIMARY KEY CLUSTERED (AllowableFundingSourceID)
);

CREATE TABLE AllowableRevenueAccount (
AllowableRevenueAccountID INT IDENTITY(1,1) NOT NULL,
AreaPlanAccountID INT  NOT NULL,
AreaPlanFundingSourceID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
PrimaryMatchAccount VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ReportAs VARCHAR(100)  NULL,
Constraint PK_AllowableRevenueAccountID_AllowableRevenueAccount PRIMARY KEY CLUSTERED (AllowableRevenueAccountID)
);

CREATE TABLE AngularConfigSetting (
Id INT IDENTITY(1,1) NOT NULL,
Environment VARCHAR(15)  NULL,
Component VARCHAR(30)  NULL,
IsVisible BIT  NULL,
CreatedOn DATETIME  NOT NULL,
Createdby VARCHAR(50)  NULL,
ModifiedOn DATETIME  NOT NULL,
ModifiedBy VARCHAR(50)  NULL,
Constraint PK_Id_AngularConfigSetting PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE APIAccessLog (
APIAccessLogID INT IDENTITY(1,1) NOT NULL,
DateTimeAccessed DATETIME  NOT NULL,
AccessIP VARCHAR(100)  NOT NULL,
APIID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_APIAccessLogID_APIAccessLog PRIMARY KEY CLUSTERED (APIAccessLogID)
);

CREATE TABLE API (
APIID INT IDENTITY(1,1) NOT NULL,
APIName VARCHAR(160)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_APIID_API PRIMARY KEY CLUSTERED (APIID)
);

CREATE TABLE AppointmentAssessmentLink (
AppointmentAssessmentLinkID INT IDENTITY(1,1) NOT NULL,
AppointmentID INT  NOT NULL,
AssessID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AppointmentAssessmentLinkID_AppointmentAssessmentLink PRIMARY KEY CLUSTERED (AppointmentAssessmentLinkID)
);

CREATE TABLE AppointmentSchedulerActivity (
AppointmentSchedulerActivityID INT IDENTITY(1,1) NOT NULL,
AppointmentId INT  NOT NULL,
SchedulerActivityId INT  NOT NULL,
ParentAppointmentId INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AppointmentSchedulerActivityID_AppointmentSchedulerActivity PRIMARY KEY CLUSTERED (AppointmentSchedulerActivityID)
);

CREATE TABLE Appointment (
AppointmentID INT IDENTITY(1,1) NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
EntityID INT  NULL,
OpenID INT  NULL,
EnrollID INT  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
VServiceID INT  NULL,
ActivityID INT  NULL,
EnrollGroupID INT  NULL,
TeamID INT  NULL,
Type VARCHAR(100)  NULL,
SubType VARCHAR(100)  NULL,
Description VARCHAR(100)  NULL,
Reason VARCHAR(255)  NULL,
Notes VARCHAR(2000)  NULL,
Category VARCHAR(100)  NULL,
Location VARCHAR(100)  NULL,
Status VARCHAR(100)  NULL,
HighPriority BIT  NOT NULL,
OrigApptID INT  NULL,
ApptGenericDrop1 VARCHAR(100)  NULL,
ApptGenericDrop2 VARCHAR(100)  NULL,
ApptGenericText1 VARCHAR(2000)  NULL,
ApptGenericText2 VARCHAR(2000)  NULL,
ApptGenericDate1 DATETIME  NULL,
ApptGenericDate2 DATETIME  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
FullDescription VARCHAR(4000)  NULL,
RecurrenceRule VARCHAR(1024)  NULL,
RecurrenceParentID INT  NULL,
ApptGenericDrop3 VARCHAR(50)  NULL,
ApptGenericDrop4 VARCHAR(50)  NULL,
ApptGenericDrop5 VARCHAR(50)  NULL,
ApptGenericDrop6 VARCHAR(50)  NULL,
ApptGenericDrop7 VARCHAR(50)  NULL,
ApptGenericDrop8 VARCHAR(50)  NULL,
ApptGenericDrop9 VARCHAR(50)  NULL,
ApptGenericDrop10 VARCHAR(50)  NULL,
ApptGenericText3 VARCHAR(50)  NULL,
ApptGenericText4 VARCHAR(50)  NULL,
ApptGenericText5 VARCHAR(50)  NULL,
ApptGenericText6 VARCHAR(50)  NULL,
ApptGenericText7 VARCHAR(50)  NULL,
ApptGenericText8 VARCHAR(50)  NULL,
ApptGenericText9 VARCHAR(50)  NULL,
Room VARCHAR(50)  NULL,
VendorID INT  NULL,
ApptGenericDrop11 VARCHAR(MAX)  NULL,
FundCode VARCHAR(25)  NULL,
TravelTime DATETIME  NULL,
PrepTime DATETIME  NULL,
CreateDate DATETIME  NOT NULL,
OrganizationName VARCHAR(200)  NULL,
ContactName VARCHAR(100)  NULL,
ContactPhone VARCHAR(15)  NULL,
ContactEmail VARCHAR(50)  NULL,
ExpectedAttend INT  NULL,
EventAddress VARCHAR(200)  NULL,
Constraint PK_AppointmentID_Appointment PRIMARY KEY CLUSTERED (AppointmentID)
);

CREATE TABLE ApptParticipant (
ApptParticipantID INT IDENTITY(1,1) NOT NULL,
AppointmentID INT  NOT NULL,
ContactID INT  NOT NULL,
Status VARCHAR(100)  NULL,
Attendance VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ApptParticipantID_ApptParticipant PRIMARY KEY CLUSTERED (ApptParticipantID)
);

CREATE TABLE AreaPlanAccount (
AreaPlanAccountID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(100)  NOT NULL,
AccountShortName VARCHAR(200)  NOT NULL,
PayorID INT  NOT NULL,
ISComboCodeID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanAccountID_AreaPlanAccount PRIMARY KEY CLUSTERED (AreaPlanAccountID)
);

CREATE TABLE AreaPlanAllocation (
AreaPlanAllocationID INT IDENTITY(1,1) NOT NULL,
AreaPlanID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
PayerID INT  NOT NULL,
IndexCodeID INT  NOT NULL,
SubObjectCodeID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanAllocationID_AreaPlanAllocation PRIMARY KEY CLUSTERED (AreaPlanAllocationID)
);

CREATE TABLE AreaPlanBudget (
AreaPlanBudgetID INT IDENTITY(1,1) NOT NULL,
AreaPlanID INT  NOT NULL,
ProgramID INT  NOT NULL,
ServiceID INT  NOT NULL,
ProviderID INT  NOT NULL,
AreaPlanFundingSourceID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanBudgetID_AreaPlanBudget PRIMARY KEY CLUSTERED (AreaPlanBudgetID)
);

CREATE TABLE AreaPlanFiscalYear (
AreaPlanFiscalYearID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(100)  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanFiscalYearID_AreaPlanFiscalYear PRIMARY KEY CLUSTERED (AreaPlanFiscalYearID)
);

CREATE TABLE AreaPlanFundingSource (
AreaPlanFundingSourceID INT IDENTITY(1,1) NOT NULL,
FundingSourceName VARCHAR(200)  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
AllowableAgencies VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanFundingSourceID_AreaPlanFundingSource PRIMARY KEY CLUSTERED (AreaPlanFundingSourceID)
);

CREATE TABLE AreaPlanMatchRequirement (
AreaPlanMatchRequirementID INT IDENTITY(1,1) NOT NULL,
AreaPlanFundingSourceID INT  NOT NULL,
RuleNumber INT  NOT NULL,
MinReqPercent NUMERIC(19,2)  NOT NULL,
Active BIT  NOT NULL,
Accounts VARCHAR(MAX)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
MatchType VARCHAR(100)  NULL,
OfAccounts VARCHAR(MAX)  NULL,
Constraint PK_AreaPlanMatchRequirementID_AreaPlanMatchRequirement PRIMARY KEY CLUSTERED (AreaPlanMatchRequirementID)
);

CREATE TABLE AreaPlanProgramExpense (
AreaPlanProgramExpenseID INT IDENTITY(1,1) NOT NULL,
AreaPlanBudgetID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
DefaultReimbursement NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanProgramExpenseID_AreaPlanProgramExpense PRIMARY KEY CLUSTERED (AreaPlanProgramExpenseID)
);

CREATE TABLE AreaPlanProgramFunding (
AreaPlanProgramFundingID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
ServiceID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanProgramFundingID_AreaPlanProgramFunding PRIMARY KEY CLUSTERED (AreaPlanProgramFundingID)
);

CREATE TABLE AreaPlanReimbursement (
AreaPlanReimbursementID INT IDENTITY(1,1) NOT NULL,
Date DATETIME  NULL,
ServiceMonth DATETIME  NOT NULL,
Status VARCHAR(100)  NULL,
StateFiscalContact INT  NULL,
AgencyFiscalContact INT  NULL,
AreaPlanID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ReimbType BIT  NULL,
ReasonForIgnoringValidation VARCHAR(255)  NULL,
Valid BIT  NULL,
DirectorCertification VARCHAR(150)  NULL,
CertifiedBy INT  NULL,
CertificationDate DATETIME  NULL,
CertificationTime DATETIME  NULL,
Constraint PK_AreaPlanReimbursementID_AreaPlanReimbursement PRIMARY KEY CLUSTERED (AreaPlanReimbursementID)
);

CREATE TABLE AreaPlanRevenue (
AreaPlanRevenueID INT IDENTITY(1,1) NOT NULL,
AreaPlanBudgetID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
DefaultReimbursement NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanRevenueID_AreaPlanRevenue PRIMARY KEY CLUSTERED (AreaPlanRevenueID)
);

CREATE TABLE AreaPlanServiceExpenseAccount (
AreaPlanServiceExpenseAccountID INT IDENTITY(1,1) NOT NULL,
AreaPlanServiceExpenseID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanServiceExpenseAccountID_AreaPlanServiceExpenseAccount PRIMARY KEY CLUSTERED (AreaPlanServiceExpenseAccountID)
);

CREATE TABLE AreaPlanServiceExpense (
AreaPlanServiceExpenseID INT IDENTITY(1,1) NOT NULL,
AreaPlanBudgetID INT  NOT NULL,
DirectContract VARCHAR(100)  NOT NULL,
EstimatedUnits INT  NOT NULL,
UnitCost NUMERIC(19,2)  NOT NULL,
EstimatedConsumers INT  NOT NULL,
EstimatedCost NUMERIC(19,2)  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AreaPlanServiceExpenseID_AreaPlanServiceExpense PRIMARY KEY CLUSTERED (AreaPlanServiceExpenseID)
);

CREATE TABLE AreaPlan (
AreaPlanID INT IDENTITY(1,1) NOT NULL,
AgencyID INT  NOT NULL,
AreaPlanFiscalYearID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
Status VARCHAR(100)  NULL,
StatePrimaryMemberID INT  NULL,
AgencyPrimaryMemberID INT  NULL,
StateFiscalMemberID INT  NULL,
AgencyFiscalMemberID INT  NULL,
Version INT  NOT NULL,
ActiveVersion BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
VersionIdentifier VARCHAR(16)  NULL,
DirectorCertification VARCHAR(150)  NULL,
CertifiedBy INT  NULL,
CertificationDate DATETIME  NULL,
CertificationTime DATETIME  NULL,
ReasonForIgnoringValidation VARCHAR(255)  NULL,
Valid BIT  NULL,
Constraint PK_AreaPlanID_AreaPlan PRIMARY KEY CLUSTERED (AreaPlanID)
);

CREATE TABLE ASSESSMENTDETREVIEW (
ASSESSID INT  NOT NULL,
SCALE VARCHAR(255)  NULL,
ITEM VARCHAR(MAX)  NULL,
ASSESSMENT VARCHAR(50)  NULL,
SCORE NUMERIC(10,0)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
YN INT  NULL,
LOOKUPVALUE VARCHAR(50)  NULL,
SCALEID NUMERIC(10,0)  NOT NULL,
QUESTIONID VARCHAR(15)  NULL,
SECID VARCHAR(500)  NULL,
APPTYPE VARCHAR(5)  NULL,
ASSESSMENTDETREVIEWID INT IDENTITY(1,1) NOT NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ASSESSMENTDETREVIEWID_ASSESSMENTDETREVIEW PRIMARY KEY CLUSTERED (ASSESSMENTDETREVIEWID)
);

CREATE TABLE AssessmentMobileTracker (
AssessmentMobileTrackerID INT IDENTITY(1,1) NOT NULL,
uploaddate DATETIME  NOT NULL,
mobileassessmentkey VARCHAR(800)  NOT NULL,
mobileassessmentdata VARCHAR(MAX)  NOT NULL,
Constraint PK_AssessmentMobileTrackerID_AssessmentMobileTracker PRIMARY KEY CLUSTERED (AssessmentMobileTrackerID)
);

CREATE TABLE AssessmentReviewLog (
AssessmentReviewLogID INT IDENTITY(1,1) NOT NULL,
AssessID INT  NULL,
XMLData VARCHAR(MAX)  NOT NULL,
SaveSuccessful BIT  NOT NULL,
ErrorID INT  NULL,
ErrorMessage VARCHAR(255)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AssessmentReviewLogID_AssessmentReviewLog PRIMARY KEY CLUSTERED (AssessmentReviewLogID)
);

CREATE TABLE ASSESSMENTREVIEW (
ASSESSID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
ASSESSMENT VARCHAR(50)  NULL,
REVIEW VARCHAR(100)  NULL,
RATER NUMERIC(10,0)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
SYSTEMFACTORS VARCHAR(50)  NULL,
INDIVIDUALFACTORS VARCHAR(50)  NULL,
STATUS VARCHAR(100)  NULL,
RISKS VARCHAR(50)  NULL,
FUNDCODE VARCHAR(25)  NULL,
REVIEWDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
PROGRAM NUMERIC(10,0)  NULL,
APPROVEDBY NUMERIC(10,0)  NULL,
APPROVEDATE DATETIME  NULL,
APPROVEUSER VARCHAR(100)  NULL,
TRIGGERID NUMERIC(10,0)  NULL,
TRIGGERPAGE VARCHAR(20)  NULL,
APPTYPE VARCHAR(5)  NULL,
ENROLLID INT  NULL,
OPENCLOSEID NUMERIC(10,0)  NULL,
ScreenDesignID INT  NOT NULL,
NoteID INT  NULL,
UserStamp INT  NOT NULL,
PageName VARCHAR(100)  NULL,
EntityID INT  NULL,
InfoPathFormStatus INT  NULL,
InfoPathFormUserStamp INT  NULL,
InfoPathFormCheckOutDate DATETIME  NULL,
ExpirationDate DATETIME  NULL,
Expired BIT  NULL,
Agency INT  NULL,
ServiceProvider INT  NULL,
ExternalRater INT  NULL,
AsessOriginalID INT  NULL,
TotalProgress VARCHAR(500)  NULL,
RequiredProgress VARCHAR(500)  NULL,
CheckOutBy INT  NULL,
CheckOutStatus INT  NULL,
CheckOutDate DATETIME  NULL,
CheckInDate DATETIME  NULL,
Constraint PK_ASSESSID_ASSESSMENTREVIEW PRIMARY KEY CLUSTERED (ASSESSID)
);

CREATE TABLE AssessmentsLogServer (
AssessmentsLogServerID INT IDENTITY(1,1) NOT NULL,
Date DATETIME  NOT NULL,
[Database] VARCHAR(50)  NULL,
Thread VARCHAR(255)  NOT NULL,
Level VARCHAR(20)  NOT NULL,
Logger VARCHAR(255)  NOT NULL,
Message VARCHAR(4000)  NOT NULL,
Exception VARCHAR(2000)  NOT NULL,
Constraint PK_AssessmentsLogServerID_AssessmentsLogServer PRIMARY KEY CLUSTERED (AssessmentsLogServerID)
);

CREATE TABLE AssignedRole_Reports (
RoleReportID INT IDENTITY(1,1) NOT NULL,
RoleID INT  NOT NULL,
ReportID INT  NOT NULL,
Zone VARCHAR(50)  NOT NULL,
SequenceOrder INT  NOT NULL,
Constraint PK_RoleReportID_AssignedRole_Reports PRIMARY KEY CLUSTERED (RoleReportID)
);

CREATE TABLE AuthCreatedLogs (
AuthCreatedLogID INT IDENTITY(1,1) NOT NULL,
AuthScheduleExecutionLogID INT  NOT NULL,
OriginatingAuthID INT  NOT NULL,
AuthID INT  NOT NULL,
Success BIT  NOT NULL,
Message VARCHAR(MAX)  NULL,
Constraint PK_AuthCreatedLogID_AuthCreatedLogs PRIMARY KEY CLUSTERED (AuthCreatedLogID)
);

CREATE TABLE AuthResponse (
AuthServiceId INT  NULL,
RecordDate DATETIME  NULL,
AuthID VARCHAR(40)  NULL,
RecordType VARCHAR(1)  NULL,
ResponseStatus VARCHAR(20)  NULL,
MCOAuthServiceID VARCHAR(40)  NULL,
AuthResponseDate DATETIME  NULL,
RejectReason1 VARCHAR(200)  NULL,
RejectReason2 VARCHAR(200)  NULL,
RejectReason3 VARCHAR(200)  NULL,
RejectReason4 VARCHAR(200)  NULL,
RejectReason5 VARCHAR(200)  NULL,
RejectReason6 VARCHAR(200)  NULL,
RejectReason7 VARCHAR(200)  NULL,
RejectReason8 VARCHAR(200)  NULL,
RejectReason9 VARCHAR(200)  NULL,
RejectReason10 VARCHAR(200)  NULL,
OtherText VARCHAR(200)  NULL,
AuthResponseId INT IDENTITY(1,1) NOT NULL,
FileId INT  NULL,
TimeStamp DATETIME  NULL,
Constraint PK_AuthResponseId_AuthResponse PRIMARY KEY CLUSTERED (AuthResponseId)
);

CREATE TABLE AuthScheduleExecutionLogs (
AuthScheduleExecutionLogID INT IDENTITY(1,1) NOT NULL,
AuthScheduleID INT  NOT NULL,
LastRunDate DATETIME  NOT NULL,
AuthCreatedCount INT  NOT NULL,
Constraint PK_AuthScheduleExecutionLogID_AuthScheduleExecutionLogs PRIMARY KEY CLUSTERED (AuthScheduleExecutionLogID)
);

CREATE TABLE AuthSchedulesConfig (
DefaultFrequency INT  NOT NULL,
DefaultInterval INT  NOT NULL
);

CREATE TABLE AuthSchedulesFilters (
AuthSchedulesFilterID INT IDENTITY(1,1) NOT NULL,
AuthScheduleID INT  NOT NULL,
DBFieldName VARCHAR(255)  NOT NULL,
FieldLabel VARCHAR(255)  NOT NULL,
FieldValue VARCHAR(500)  NULL,
FieldDisplayValue VARCHAR(500)  NULL,
FieldOperatorCriteria VARCHAR(500)  NOT NULL,
FieldOperator VARCHAR(500)  NOT NULL,
FieldDataType VARCHAR(200)  NOT NULL,
Constraint PK_AuthSchedulesFilterID_AuthSchedulesFilters PRIMARY KEY CLUSTERED (AuthSchedulesFilterID)
);

CREATE TABLE AuthSchedules (
AuthScheduleID INT IDENTITY(1,1) NOT NULL,
JobName VARCHAR(250)  NOT NULL,
AuthStatus VARCHAR(100)  NOT NULL,
AuthServiceStatus VARCHAR(100)  NULL,
AuthServiceEDIStatus VARCHAR(100)  NULL,
UserID INT  NOT NULL,
RoleID INT  NOT NULL,
DynamicSQL VARCHAR(MAX)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
freqtype INT  NOT NULL,
freqinterval INT  NOT NULL,
freqrelativeinterval INT  NOT NULL,
Constraint PK_AuthScheduleID_AuthSchedules PRIMARY KEY CLUSTERED (AuthScheduleID)
);

CREATE TABLE AuthServicePayments (
AuthServicePaymentID INT IDENTITY(1,1) NOT NULL,
PaymentDate DATETIME  NOT NULL,
AuthServiceID INT  NOT NULL,
AuthorizationID INT  NOT NULL,
Amount NUMERIC(19,4)  NOT NULL,
Units NUMERIC(10,2)  NULL,
Comments VARCHAR(1000)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_AuthServicePaymentID_AuthServicePayments PRIMARY KEY CLUSTERED (AuthServicePaymentID)
);

CREATE TABLE AuthServicePayment (
AuthServicePaymentID INT IDENTITY(1,1) NOT NULL,
AuthServiceID INT  NOT NULL,
Amount NUMERIC(18,0)  NULL,
Units NUMERIC(18,0)  NULL,
Constraint PK_AuthServicePaymentID_AuthServicePayment PRIMARY KEY CLUSTERED (AuthServicePaymentID)
);

CREATE TABLE AuthServicesErrorMessage (
AuthServicesErrorMessageID INT IDENTITY(1,1) NOT NULL,
AuthServiceId INT  NOT NULL,
Source VARCHAR(100)  NULL,
ErrorCode VARCHAR(100)  NULL,
ErrorMessage VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
CodeType VARCHAR(50)  NULL,
ActionCode VARCHAR(50)  NULL,
ActionMessage VARCHAR(MAX)  NULL,
Constraint PK_AuthServicesErrorMessageID_AuthServicesErrorMessage PRIMARY KEY CLUSTERED (AuthServicesErrorMessageID)
);

CREATE TABLE AuthServices (
AuthServiceID INT IDENTITY(1,1) NOT NULL,
Authid INT  NOT NULL,
VSERVICEID INT  NOT NULL,
UnitsApproved INT  NOT NULL,
MaxAmount NUMERIC(19,4)  NOT NULL,
UNITCOST NUMERIC(19,4)  NOT NULL,
OVERHEAD NUMERIC(19,4)  NULL,
StartDate DATETIME  NOT NULL,
ENDDATE DATETIME  NOT NULL,
TERMINATE INT  NULL,
TERMDATE DATETIME  NULL,
TERMBALANCE NUMERIC(19,4)  NULL,
PAID INT  NULL,
BALANCE NUMERIC(19,4)  NULL,
ORDERED INT  NULL,
FUNDSOURCE VARCHAR(50)  NULL,
MAXUNITSMONTH VARCHAR(8)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
STRATEGYID NUMERIC(10,0)  NULL,
Monday INT  NULL,
Tuesday INT  NULL,
Wednesday INT  NULL,
Thursday INT  NULL,
Friday INT  NULL,
Saturday INT  NULL,
Sunday INT  NULL,
ExpectedMonthlyAmount NUMERIC(19,4)  NULL,
ExpectedMonthlyUnits INT  NULL,
DATAENTRYDATE DATETIME  NULL,
BILLTHESAMETIME INT  NULL,
AccountNumber NUMERIC(10,0)  NULL,
Worker NUMERIC(9,0)  NULL,
SecondaryCode VARCHAR(25)  NULL,
PayerID NUMERIC(18,0)  NULL,
PROJECTEDAMOUNT NUMERIC(14,2)  NULL,
COMMENT VARCHAR(MAX)  NULL,
SERVICETYPE VARCHAR(50)  NULL,
APPTYPE VARCHAR(5)  NULL,
PROJAMT NUMERIC(18,0)  NULL,
EXPECTEDTERMDATE DATETIME  NULL,
ServiceCode VARCHAR(500)  NOT NULL,
ServiceDescription VARCHAR(500)  NULL,
UnitsRequested NUMERIC(10,2)  NULL,
AmountRequested VARCHAR(8)  NULL,
UnitCostRequested VARCHAR(8)  NULL,
Modifier1 VARCHAR(100)  NULL,
Modifier2 VARCHAR(100)  NULL,
Modifier3 VARCHAR(100)  NULL,
Modifier4 VARCHAR(100)  NULL,
POServiceStatus VARCHAR(100)  NULL,
POServiceStatusDate DATETIME  NULL,
DateApproved DATETIME  NULL,
ToothSystem VARCHAR(100)  NULL,
ToothNumber VARCHAR(100)  NULL,
ToothSurface VARCHAR(100)  NULL,
LevelofCare VARCHAR(100)  NULL,
CodeList VARCHAR(25)  NULL,
Frequency VARCHAR(100)  NULL,
UnitType VARCHAR(100)  NULL,
TimePeriodQualifier VARCHAR(100)  NULL,
NumberofPeriods NUMERIC(9,4)  NULL,
PatternCode VARCHAR(100)  NULL,
PatternTimeCode VARCHAR(100)  NULL,
ExtUnitsRequested NUMERIC(10,2)  NULL,
ExtUnitsApproved NUMERIC(10,2)  NULL,
SubmitterTranID VARCHAR(25)  NULL,
RequestID INT  NULL,
TerminateReason VARCHAR(100)  NULL,
Determination VARCHAR(100)  NULL,
NoteID INT  NULL,
UserStamp INT  NOT NULL,
UnitsOfMeasure VARCHAR(25)  NULL,
MaxUnitsRequested INT  NULL,
IsComboCodeID INT  NULL,
Diagnosis1 INT  NULL,
Diagnosis2 INT  NULL,
UnitsPer NUMERIC(19,2)  NULL,
AbsenteeRate NUMERIC(19,2)  NULL,
ParentAuthServiceID INT  NULL,
BaseCost NUMERIC(19,4)  NULL,
UseServiceSchedule BIT  NULL,
ConsumerLiability NUMERIC(9,2)  NULL,
AuthServiceNumber VARCHAR(15)  NULL,
AutoCreated BIT  NOT NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericText3 VARCHAR(100)  NULL,
GenericText4 VARCHAR(100)  NULL,
GenericText5 VARCHAR(100)  NULL,
GenericText6 VARCHAR(100)  NULL,
GenericText7 VARCHAR(100)  NULL,
GenericText8 VARCHAR(100)  NULL,
AuthServiceEDIStatus VARCHAR(200)  NULL,
PtLvlExternalTRN VARCHAR(50)  NULL,
PtLvlExternalTRNCompanyID VARCHAR(50)  NULL,
PtLvlHCRActionCode VARCHAR(50)  NULL,
PtLvlAdminRefNumber VARCHAR(50)  NULL,
SvcLvlExternalTRN VARCHAR(50)  NULL,
SvcLvlExternalTRNCompanyID VARCHAR(50)  NULL,
SvcLvlHCRActionCode VARCHAR(50)  NULL,
SvcLvlAdminRefNumber VARCHAR(50)  NULL,
UnitsApprovedFractional NUMERIC(19,2)  NULL,
COMMENTS278 VARCHAR(264)  NULL,
AllowEVVDelivery BIT  NULL,
EVVComments VARCHAR(500)  NULL,
ContractNumber VARCHAR(50)  NULL,
ProviderRateType VARCHAR(100)  NULL,
InternalProgram VARCHAR(100)  NULL,
ConsumerCounty VARCHAR(100)  NULL,
ServiceRatio VARCHAR(100)  NULL,
InventoryID INT  NULL,
Constraint PK_AuthServiceID_AuthServices PRIMARY KEY CLUSTERED (AuthServiceID)
);

CREATE TABLE Auth (
Authid INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NULL,
StartDate DATETIME  NOT NULL,
ENDDATE DATETIME  NOT NULL,
FIPSCODE VARCHAR(15)  NULL,
TERMINATE INT  NULL,
TerminationEffectiveDate DATETIME  NULL,
TerminationReason VARCHAR(100)  NULL,
MAXAMT NUMERIC(19,4)  NULL,
FiscalYear VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
COMMENTS VARCHAR(MAX)  NULL,
Message VARCHAR(175)  NULL,
InvoiceComments VARCHAR(175)  NULL,
Status VARCHAR(100)  NOT NULL,
POENCUMBEREDAMT NUMERIC(19,4)  NULL,
RequestedBy INT  NULL,
SECONDAUTHORIZATION NUMERIC(10,0)  NULL,
THIRDAUTHORIZATION NUMERIC(10,0)  NULL,
ACCOUNTNO NUMERIC(10,0)  NULL,
SETTING VARCHAR(15)  NULL,
LOCATION VARCHAR(25)  NULL,
AUTHDATE DATETIME  NULL,
AUTHNO VARCHAR(15)  NULL,
PAYORID INT  NULL,
SUBMITTERTRACENUMBER VARCHAR(50)  NULL,
FIRSTAUTHDATE DATETIME  NULL,
SECONDAUTHDATE DATETIME  NULL,
THIRDAUTHDATE DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
ForBatchServices INT  NULL,
MaxBatchServiceAmount VARCHAR(8)  NULL,
MaxBatchServiceUnit NUMERIC(19,4)  NULL,
REGENERATED INT  NULL,
SUBMITTERTRANID VARCHAR(25)  NULL,
EnrollID INT  NULL,
ForBundleServices INT  NULL,
RequestID INT  NULL,
LocationReason VARCHAR(100)  NULL,
ProviderType VARCHAR(100)  NULL,
ServiceType VARCHAR(100)  NULL,
OriginatingPO INT  NULL,
ProviderEligible BIT  NULL,
ExternalAuthStatus VARCHAR(100)  NULL,
DataEntryDate DATETIME  NOT NULL,
POStatusDate DATETIME  NULL,
ReviewedBy INT  NULL,
DateReceived DATETIME  NULL,
NoteID INT  NULL,
UserStamp INT  NOT NULL,
OPENID INT  NOT NULL,
DateRequested DATETIME  NULL,
LevelOfCare VARCHAR(25)  NULL,
InsuranceID INT  NULL,
Priority VARCHAR(25)  NULL,
RequestMethod VARCHAR(25)  NULL,
RequestType VARCHAR(25)  NULL,
RoleID INT  NULL,
ApprovedBy INT  NULL,
ApprovedDate DATETIME  NULL,
DenialReason VARCHAR(100)  NULL,
DeniedBy INT  NULL,
TerminatedBy INT  NULL,
AutoCreated BIT  NOT NULL,
DisableAutoCreation BIT  NOT NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericText3 VARCHAR(100)  NULL,
GenericText4 VARCHAR(100)  NULL,
GenericText5 VARCHAR(100)  NULL,
COMMENTS278 VARCHAR(264)  NULL,
Constraint PK_Authid_Auth PRIMARY KEY CLUSTERED (Authid)
);

CREATE TABLE AutoDistribute (
AutoDistID NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
VendorID NUMERIC(18,0)  NOT NULL,
MemberID NUMERIC(18,0)  NOT NULL,
DocumentType VARCHAR(100)  NOT NULL,
DateTimeStamp DATETIME  NULL,
UserStamp INT  NOT NULL,
Constraint PK_AutoDistID_AutoDistribute PRIMARY KEY CLUSTERED (AutoDistID)
);

CREATE TABLE BizTalkConfiguration (
BizTalkConfigID INT IDENTITY(1,1) NOT NULL,
FolderType VARCHAR(20)  NULL,
FolderPath VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_BizTalkConfigID_BizTalkConfiguration PRIMARY KEY CLUSTERED (BizTalkConfigID)
);

CREATE TABLE BulkWordMergeDetail (
BulkWordMergeDetailId INT IDENTITY(1,1) NOT NULL,
BulkWordMergeId INT  NULL,
NoteId INT  NULL,
MergedBy INT  NULL,
DateMerged DATETIME  NULL,
TimeMerged DATETIME  NULL,
MergeStatus VARCHAR(100)  NULL,
ErrorLogs VARCHAR(MAX)  NULL,
MergeId INT  NULL,
DistributionGroupId INT  NULL,
WordMergeTemplateId INT  NULL,
MergeType VARCHAR(100)  NULL,
MergeCategory VARCHAR(100)  NULL,
VendorID INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
NOTETYPE VARCHAR(100)  NULL,
NoteSubType VARCHAR(100)  NULL,
NoteStatus VARCHAR(100)  NULL,
NoteDescription VARCHAR(MAX)  NULL,
Constraint PK_BulkWordMergeDetailId_BulkWordMergeDetail PRIMARY KEY CLUSTERED (BulkWordMergeDetailId)
);

CREATE TABLE BulkWordMerge (
BulkWordMergeId INT IDENTITY(1,1) NOT NULL,
DistributionGroupId INT  NULL,
WordMergeTemplateId INT  NULL,
MergeType VARCHAR(100)  NULL,
MergeCategory VARCHAR(100)  NULL,
VendorID INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
NOTETYPE VARCHAR(100)  NULL,
NoteSubType VARCHAR(100)  NULL,
NoteStatus VARCHAR(100)  NULL,
NoteDescription VARCHAR(MAX)  NULL,
CreatedBy INT  NULL,
CreatedOn DATETIME  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
Active BIT  NOT NULL,
CurrentMergeStatus VARCHAR(100)  NULL,
Constraint PK_BulkWordMergeId_BulkWordMerge PRIMARY KEY CLUSTERED (BulkWordMergeId)
);

CREATE TABLE BusinessDayClosure (
BusinessDayClosureID INT IDENTITY(1,1) NOT NULL,
FundCode VARCHAR(25)  NOT NULL,
ClosureDate DATETIME  NOT NULL,
Comments VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
FiscalYear INT  NULL,
DisplayScheduler BIT  NULL,
Constraint PK_BusinessDayClosureID_BusinessDayClosure PRIMARY KEY CLUSTERED (BusinessDayClosureID)
);

CREATE TABLE BusinessPoliciesRules (
BusinessPolicyRuleID INT IDENTITY(1,1) NOT NULL,
BusinessRuleID INT  NOT NULL,
BusinessPolicyID INT  NOT NULL,
IsActive BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_BusinessPolicyRuleID_BusinessPoliciesRules PRIMARY KEY CLUSTERED (BusinessPolicyRuleID)
);

CREATE TABLE BusinessPoliciesType (
BusinessPolicyTypeID INT IDENTITY(1,1) NOT NULL,
Name VARCHAR(50)  NOT NULL,
Description VARCHAR(200)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_BusinessPolicyTypeID_BusinessPoliciesType PRIMARY KEY CLUSTERED (BusinessPolicyTypeID)
);

CREATE TABLE BusinessPolicies (
BusinessPolicyID INT IDENTITY(1,1) NOT NULL,
BusinessPolicyTypeID INT  NOT NULL,
PolicyName VARCHAR(50)  NOT NULL,
PolicyVersion VARCHAR(10)  NOT NULL,
IsActive BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_BusinessPolicyID_BusinessPolicies PRIMARY KEY CLUSTERED (BusinessPolicyID)
);

CREATE TABLE BusinessRulesMessages (
BusinessRulesMessageId INT  NOT NULL,
BusinessRuleID INT  NULL,
BusinessRulesMessage VARCHAR(600)  NULL
);

CREATE TABLE BusinessRulesTracking (
BusinessRulesTrackingID INT IDENTITY(1,1) NOT NULL,
PlanValidationID INT  NOT NULL,
BusinessRuleID INT  NULL,
DateTime DATETIME  NULL,
Result VARCHAR(500)  NULL,
Reason VARCHAR(MAX)  NULL,
PlanServiceID INT  NULL,
TableIndicator VARCHAR(70)  NULL,
AreaPlanBudgetID INT  NULL,
SanServiceID INT  NULL,
AuthServiceID INT  NULL,
Constraint PK_BusinessRulesTrackingID_BusinessRulesTracking PRIMARY KEY CLUSTERED (BusinessRulesTrackingID)
);

CREATE TABLE BusinessRules (
BusinessRuleID INT IDENTITY(1,1) NOT NULL,
RuleName VARCHAR(100)  NULL,
RuleDescription VARCHAR(500)  NULL,
RuleOrder INT  NOT NULL,
RuleDisplayName VARCHAR(500)  NULL,
RuleLogic VARCHAR(MAX)  NULL,
AdjustmentCode VARCHAR(10)  NOT NULL,
IsActive BIT  NOT NULL,
IsDataSetter BIT  NOT NULL,
HasUniqueMethod BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
StandardCustom VARCHAR(100)  NULL,
SpecificationName VARCHAR(100)  NULL,
Constraint PK_BusinessRuleID_BusinessRules PRIMARY KEY CLUSTERED (BusinessRuleID)
);

CREATE TABLE Card (
CardID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
IssueDate DATETIME  NOT NULL,
ExpirationDate DATETIME  NULL,
Comment VARCHAR(255)  NULL,
Constraint PK_CardID_Card PRIMARY KEY CLUSTERED (CardID)
);

CREATE TABLE CareGiverRecipient (
CareGiverRecipientID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
Type VARCHAR(100)  NOT NULL,
ClientID INT  NOT NULL,
CaregiverRelship VARCHAR(100)  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
PrimaryYN BIT  NOT NULL,
ProgramType VARCHAR(100)  NULL,
Comment VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
OriginalRelationID VARCHAR(16)  NOT NULL,
Constraint PK_CareGiverRecipientID_CareGiverRecipient PRIMARY KEY CLUSTERED (CareGiverRecipientID)
);

CREATE TABLE CCILog (
CCILogID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
ModuleTransactionId VARCHAR(200)  NULL,
SentToCCI BIT  NULL,
AckStatus VARCHAR(100)  NULL,
AckMessage VARCHAR(200)  NULL,
MemberAction VARCHAR(50)  NULL,
ProcessedStatus VARCHAR(100)  NULL,
ProcessedMessage VARCHAR(200)  NULL,
Comment VARCHAR(1000)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_CCILogID_CCILog PRIMARY KEY CLUSTERED (CCILogID)
);

CREATE TABLE CHANGETRACKING (
TABLENAME VARCHAR(256)  NOT NULL
);

CREATE TABLE ChapterMenu (
ChapterMenuID INT IDENTITY(1,1) NOT NULL,
MenuID INT  NOT NULL,
ChapterID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Visible BIT  NULL,
SortBy INT  NOT NULL,
Constraint PK_ChapterMenuID_ChapterMenu PRIMARY KEY CLUSTERED (ChapterMenuID)
);

CREATE TABLE Chapter (
ChapterID INT IDENTITY(1,1) NOT NULL,
GroupID INT  NOT NULL,
Label VARCHAR(255)  NOT NULL,
ChapterName VARCHAR(255)  NOT NULL,
SortBy INT  NOT NULL,
QryRetVal INT  NOT NULL,
AccessLevel INT  NOT NULL,
Visible BIT  NOT NULL,
UserRequired BIT  NOT NULL,
SystemRequired BIT  NOT NULL,
HarmonyHelpID INT  NULL,
UserHelpID INT  NULL,
DisplayAsChapter BIT  NOT NULL,
IsMyHarmony BIT  NOT NULL,
UseInWFW BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UsePageSet BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ChapterID_Chapter PRIMARY KEY CLUSTERED (ChapterID)
);

CREATE TABLE ChargeCode (
ChargeCodeID INT IDENTITY(1,1) NOT NULL,
ChargeCode VARCHAR(15)  NOT NULL,
SecCode VARCHAR(15)  NULL,
Description VARCHAR(100)  NULL,
Type VARCHAR(100)  NULL,
Category VARCHAR(100)  NULL,
Class VARCHAR(100)  NULL,
Active BIT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ChargeCodeID_ChargeCode PRIMARY KEY CLUSTERED (ChargeCodeID)
);

CREATE TABLE Charge (
ChargeID INT IDENTITY(1,1) NOT NULL,
JacketID INT  NOT NULL,
ChargeDate DATETIME  NULL,
ChargeCodeID INT  NOT NULL,
Counts NUMERIC(10,0)  NULL,
MostSerious BIT  NULL,
DispositionStatus VARCHAR(100)  NULL,
DispositionDate DATETIME  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericText1 VARCHAR(2000)  NULL,
GenericText2 VARCHAR(2000)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ChargeID_Charge PRIMARY KEY CLUSTERED (ChargeID)
);

CREATE TABLE CHECKPAYMENTS (
CHECKPAYID NUMERIC(10,0)  NOT NULL,
CHECKDATE DATETIME  NULL,
PAYMETHOD VARCHAR(100)  NULL,
PAIDBY VARCHAR(75)  NULL,
PAIDAMOUNT NUMERIC(14,2)  NULL,
DATETIMESTAMP DATETIME  NULL,
PAYORID NUMERIC(10,0)  NULL,
UNAPPLIED NUMERIC(14,2)  NULL,
POSTDATE DATETIME  NULL,
RECEIPTDATE DATETIME  NULL,
DEPOSITDATE DATETIME  NULL,
CHECKNO VARCHAR(16)  NULL,
NONINVOICED NUMERIC(14,2)  NULL,
CASENO NUMERIC(18,0)  NULL,
FUNDCODE VARCHAR(25)  NULL,
INSUREID NUMERIC(10,0)  NULL,
HIPAATYPE VARCHAR(50)  NULL,
HIPAAFILE VARCHAR(255)  NULL,
APPTYPE VARCHAR(5)  NULL,
CHECKBATCHID VARCHAR(20)  NULL,
ActivityID NUMERIC(10,0)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE CHECKS (
CHECKNO VARCHAR(15)  NOT NULL,
VENDORID INT  NULL,
CHECKAMOUNT NUMERIC(19,4)  NULL,
STATUS VARCHAR(100)  NULL,
PRINTEDBY VARCHAR(10)  NULL,
CHECKNUMBER NUMERIC(10,0)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
FUNDCODE VARCHAR(25)  NULL,
GARNISHAMT NUMERIC(19,4)  NULL,
GLACCOUNT VARCHAR(20)  NULL,
MAILTONAME VARCHAR(75)  NULL,
MAILTOSTREET VARCHAR(100)  NULL,
MAILTOCITY VARCHAR(30)  NULL,
MAILTOSTATE VARCHAR(3)  NULL,
MAILTOZIP VARCHAR(10)  NULL,
MAILTOCOUNTRY VARCHAR(30)  NULL,
MAILTOSTREET2 VARCHAR(100)  NULL,
CHECKDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NULL,
PRINTDATE DATETIME  NULL,
VOIDDATE DATETIME  NULL,
CASENO NUMERIC(10,0)  NULL,
CMTranID NUMERIC(18,0)  NULL,
ExtCheckNumber VARCHAR(15)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE Claim (
ClaimID INT IDENTITY(1,1) NOT NULL,
OriginalClaimID INT  NULL,
ClaimSource VARCHAR(100)  NULL,
OpenID INT  NULL,
ClaimAmount VARCHAR(8)  NOT NULL,
Status VARCHAR(100)  NOT NULL,
Resubmitted BIT  NOT NULL,
Queue VARCHAR(100)  NULL,
CheckOutBy INT  NULL,
CheckOutDate DATETIME  NULL,
SubmitDate DATETIME  NULL,
ReceiptDate DATETIME  NOT NULL,
WarningDate DATETIME  NULL,
PatientSignatureOnFile BIT  NOT NULL,
PatientLastName VARCHAR(30)  NOT NULL,
SubmissionMethod VARCHAR(100)  NULL,
PatientFirstName VARCHAR(30)  NOT NULL,
PatientMiddleName VARCHAR(30)  NULL,
FollowupDate DATETIME  NULL,
PatientSuffix VARCHAR(30)  NULL,
PatientAddress1 VARCHAR(100)  NULL,
PatientAddress2 VARCHAR(100)  NULL,
PatientSecID INT  NULL,
PatientCity VARCHAR(30)  NULL,
PatientState VARCHAR(100)  NULL,
PatientZip VARCHAR(15)  NULL,
PatientPhone VARCHAR(16)  NULL,
PatientDOB DATETIME  NULL,
PatientSSN VARCHAR(11)  NULL,
PatientGender VARCHAR(100)  NULL,
PatientMaritalStatus VARCHAR(100)  NULL,
PlaceOfService VARCHAR(100)  NOT NULL,
ReleaseInformationCode VARCHAR(100)  NULL,
PatientSignatureSourceCode VARCHAR(100)  NULL,
RelatedCauseInfo VARCHAR(100)  NULL,
PatientConditionEmployment BIT  NOT NULL,
PatientConditionAutoAccident BIT  NOT NULL,
PatientConditionOtherAccident BIT  NOT NULL,
PatientConditionAutoAccidentStateCode VARCHAR(100)  NULL,
ReservedForLocalUse VARCHAR(30)  NULL,
PayerID INT  NULL,
PatientCaseno INT  NOT NULL,
FundCode VARCHAR(25)  NOT NULL,
AssignedWorker INT  NULL,
ExternalPayerControlNumber INT  NULL,
PayerIdentificationCodeQualifier VARCHAR(100)  NOT NULL,
Comment VARCHAR(MAX)  NULL,
PayerIdentificationCode INT  NOT NULL,
ClaimFrequencyType VARCHAR(100)  NOT NULL,
ClaimBatchNo VARCHAR(150)  NULL,
AdjudicationType VARCHAR(100)  NULL,
SubmitToOtherPayer BIT  NOT NULL,
PayerName VARCHAR(100)  NOT NULL,
PayerAddress1 VARCHAR(100)  NOT NULL,
PayerAddress2 VARCHAR(100)  NULL,
PayerCity VARCHAR(30)  NOT NULL,
PayerState VARCHAR(100)  NOT NULL,
PayerZip VARCHAR(11)  NOT NULL,
ExpirationDate DATETIME  NULL,
PeriodStartDate DATETIME  NULL,
PeriodEndDate DATETIME  NULL,
ClaimFilingIndicator VARCHAR(100)  NULL,
CurrentClaimAmount VARCHAR(8)  NULL,
TransactionNumber VARCHAR(18)  NULL,
ClaimTrackingID INT  NULL,
BizTalkPolicyName VARCHAR(50)  NULL,
BizTalkPolicyVersion VARCHAR(50)  NULL,
RuleName VARCHAR(100)  NULL,
RuleDescription VARCHAR(500)  NULL,
AdjustmentCodeID INT  NULL,
SubmitBy INT  NULL,
FacilityCode VARCHAR(100)  NOT NULL,
ProviderAcceptAssignment VARCHAR(100)  NOT NULL,
AssignmentofBenefitIndicator BIT  NULL,
ReleaseofInformation VARCHAR(100)  NOT NULL,
RelatedCauseCode VARCHAR(18)  NOT NULL,
AuthID INT  NULL,
EnrollID INT  NULL,
ImportDate DATETIME  NULL,
MedicalRecordNo VARCHAR(30)  NULL,
OriginalReferenceNo INT  NULL,
PriorAuthNo INT  NULL,
PredeterminationBenefitID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SubmitterClaimID VARCHAR(38)  NULL,
ClaimType VARCHAR(100)  NOT NULL,
ClaimStatusID INT  NOT NULL,
Voided BIT  NULL,
VoidReason VARCHAR(100)  NULL,
SubmitByName VARCHAR(100)  NULL,
ClaimProvidorSignature BIT  NULL,
VoidUser INT  NULL,
VoidDateTimeStamp DATETIME  NULL,
VoidMethod VARCHAR(100)  NULL,
ClaimPurpose VARCHAR(100)  NULL,
DayCreatedDate DATETIME  NULL,
DayFundsLastChecked DATETIME  NULL,
DayPendClaim BIT  NOT NULL,
ControlNumberSequence INT  NOT NULL,
ActivityID INT  NULL,
VoidInitiated BIT  NULL,
ManualApprovalDatetime DATETIME  NULL,
ManualApprovalUser VARCHAR(100)  NULL,
ManualApprovalAdjustmentReason VARCHAR(100)  NULL,
ManualApprovalComment VARCHAR(255)  NULL,
PaperClaim BIT  NOT NULL,
PrintDate DATETIME  NULL,
DelayCode INT  NULL,
MMISStatus VARCHAR(50)  NULL,
ClaimMMISLogID INT  NULL,
BillingProvNPI VARCHAR(80)  NULL,
SCETimelyFilingException VARCHAR(100)  NULL,
SpecialProcessing VARCHAR(100)  NULL,
AdminOverride VARCHAR(100)  NULL,
TPLPaidAmount VARCHAR(8)  NULL,
TPLReasonCode VARCHAR(100)  NULL,
TPLCarrierID VARCHAR(50)  NULL,
ClaimOperation VARCHAR(20)  NULL,
AccidentDate DATETIME  NULL,
TPLAdjustmentAmt VARCHAR(8)  NULL,
OtherPayerControlNumber INT  NULL,
IsClaimSkippedFromBatch BIT  NULL,
Constraint PK_ClaimID_Claim PRIMARY KEY CLUSTERED (ClaimID)
);

CREATE TABLE Claim837Log (
Claim837LogID INT IDENTITY(1,1) NOT NULL,
SenderID VARCHAR(15)  NULL,
InterchangeID VARCHAR(9)  NOT NULL,
Doc VARCHAR(MAX)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
ClaimBatchFileName VARCHAR(150)  NULL,
Doc997 VARCHAR(MAX)  NULL,
ClaimConfigurationID INT  NULL,
ClaimFileGUID VARCHAR(100)  NULL,
GenericDoc VARCHAR(MAX)  NULL,
IsInternalClaim BIT  NOT NULL,
Constraint PK_Claim837LogID_Claim837Log PRIMARY KEY CLUSTERED (Claim837LogID)
);

CREATE TABLE ClaimAdjustmentReimbursement (
ClaimAdjustmentReimbursementID INT IDENTITY(1,1) NOT NULL,
AdjustmentAmount VARCHAR(8)  NOT NULL,
AdjustedBy INT  NULL,
AdjustedDate DATETIME  NOT NULL,
ClaimID INT  NOT NULL,
AdjustmentCodeID INT  NOT NULL,
Unit NUMERIC(19,2)  NOT NULL,
AdjustmentType VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PrimaryAdjustment BIT  NOT NULL,
ClaimReimbursementID INT  NULL,
Constraint PK_ClaimAdjustmentReimbursementID_ClaimAdjustmentReimbursement PRIMARY KEY CLUSTERED (ClaimAdjustmentReimbursementID)
);

CREATE TABLE ClaimAdjustment (
ClaimAdjustmentID INT IDENTITY(1,1) NOT NULL,
AdjustmentAmount VARCHAR(8)  NOT NULL,
AdjustedBy INT  NULL,
AdjustedDate DATETIME  NOT NULL,
ClaimID INT  NOT NULL,
AdjustmentCodeID INT  NOT NULL,
Unit NUMERIC(19,2)  NOT NULL,
AdjustmentType VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PrimaryAdjustment BIT  NOT NULL,
Constraint PK_ClaimAdjustmentID_ClaimAdjustment PRIMARY KEY CLUSTERED (ClaimAdjustmentID)
);

CREATE TABLE ClaimBRFData (
BRFID INT IDENTITY(1,1) NOT NULL,
TradingPartnerID VARCHAR(15)  NULL,
FileTrackingID VARCHAR(9)  NULL,
ICN VARCHAR(13)  NULL,
BRFClaimStatus VARCHAR(1)  NULL,
DetailCount INT  NULL,
NPI VARCHAR(15)  NULL,
MedicaidID VARCHAR(15)  NULL,
RecipientID VARCHAR(15)  NULL,
CheckDigit VARCHAR(1)  NULL,
PatientAccountNumber VARCHAR(38)  NULL,
MedicalRecordNumber VARCHAR(30)  NULL,
DateOfService DATETIME  NULL,
BilledAmount NUMERIC(9,2)  NULL,
PaidAmount NUMERIC(9,2)  NULL,
ErrorCount INT  NULL,
BRFFilename VARCHAR(250)  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_BRFID_ClaimBRFData PRIMARY KEY CLUSTERED (BRFID)
);

CREATE TABLE ClaimBRFErrors (
BRFERRORID INT IDENTITY(1,1) NOT NULL,
BRFID INT  NULL,
DetailNumber VARCHAR(4)  NULL,
ErrorCodeStatus VARCHAR(1)  NULL,
ErrorCode VARCHAR(4)  NULL,
ErrorMsg VARCHAR(50)  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_BRFERRORID_ClaimBRFErrors PRIMARY KEY CLUSTERED (BRFERRORID)
);

CREATE TABLE ClaimConfiguration (
ClaimConfigurationID INT IDENTITY(1,1) NOT NULL,
FundCode VARCHAR(10)  NULL,
IsComboCodeID INT  NULL,
IndexCode VARCHAR(10)  NULL,
SubObjectCode VARCHAR(10)  NULL,
FileName VARCHAR(250)  NOT NULL,
Description VARCHAR(250)  NOT NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimConfigurationID_ClaimConfiguration PRIMARY KEY CLUSTERED (ClaimConfigurationID)
);

CREATE TABLE ClaimDentalMissingTeeth (
ClaimDentalMissingTeethID INT IDENTITY(1,1) NOT NULL,
ClaimDentalID INT  NOT NULL,
MissingToothNumber INT  NOT NULL,
DatetimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Constraint PK_ClaimDentalMissingTeethID_ClaimDentalMissingTeeth PRIMARY KEY CLUSTERED (ClaimDentalMissingTeethID)
);

CREATE TABLE ClaimDental (
ClaimDentalID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
OrthodonticsYN BIT  NULL,
OrthodonticsDateAppliancePlaced DATETIME  NULL,
OrthodonticsMonthsTreatmentRemaining NUMERIC(18,0)  NULL,
ReplacementProsthesisYN BIT  NULL,
DatePriorPlacement DATETIME  NULL,
DatetimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Constraint PK_ClaimDentalID_ClaimDental PRIMARY KEY CLUSTERED (ClaimDentalID)
);

CREATE TABLE ClaimDiagnosis (
ClaimDiagnosisID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
SortOrder INT  NOT NULL,
DiagCode VARCHAR(25)  NOT NULL,
DiagType VARCHAR(100)  NOT NULL,
Description VARCHAR(500)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimDiagnosisID_ClaimDiagnosis PRIMARY KEY CLUSTERED (ClaimDiagnosisID)
);

CREATE TABLE ClaimDocument (
ClaimDocumentID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
DocumentName VARCHAR(500)  NOT NULL,
DocumentType VARCHAR(100)  NOT NULL,
Document VARCHAR(MAX)  NOT NULL,
DateReceived DATETIME  NULL,
DateSent DATETIME  NULL,
TransactionSetControl VARCHAR(25)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Status VARCHAR(100)  NULL,
ReasonCode VARCHAR(100)  NULL,
FirstCSRResponse BIT  NULL,
ExternalPayerControlNumber VARCHAR(30)  NULL,
FileName VARCHAR(100)  NULL,
Constraint PK_ClaimDocumentID_ClaimDocument PRIMARY KEY CLUSTERED (ClaimDocumentID)
);

CREATE TABLE ClaimETRRCodes (
ClaimETRRCodesID INT IDENTITY(1,1) NOT NULL,
ERRORNUMBER VARCHAR(50)  NOT NULL,
DESCRIPTION VARCHAR(300)  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_ClaimETRRCodesID_ClaimETRRCodes PRIMARY KEY CLUSTERED (ClaimETRRCodesID)
);

CREATE TABLE ClaimETRRDetail (
ClaimETRRDetailID INT IDENTITY(1,1) NOT NULL,
ClaimETRRID INT  NOT NULL,
CAPITATEDPLANID VARCHAR(20)  NULL,
SUBMISSIONNUMBER VARCHAR(30)  NULL,
FAILEDRECORDCOUNT INT  NULL,
DateTimeStamp DATETIME  NULL,
ERRORNUMBER VARCHAR(50)  NULL,
ERRORSEVERITY VARCHAR(2)  NULL,
ClaimID INT  NULL,
Constraint PK_ClaimETRRDetailID_ClaimETRRDetail PRIMARY KEY CLUSTERED (ClaimETRRDetailID)
);

CREATE TABLE ClaimETRRError (
ClaimETRRErrorID INT IDENTITY(1,1) NOT NULL,
ClaimETRRDetailID INT  NOT NULL,
CAPITATEDPLANID VARCHAR(20)  NULL,
RELATEDPLANID VARCHAR(20)  NULL,
SUBMISSIONNUMBER VARCHAR(30)  NULL,
ENCOUNTERREFNUMBER VARCHAR(30)  NULL,
ENCOUNTERLINENUMBER VARCHAR(3)  NULL,
RECORDTYPE INT  NULL,
RECORDCATEGORY VARCHAR(1)  NULL,
ERRORNUMBER VARCHAR(50)  NULL,
ERRORSEVERITY VARCHAR(2)  NULL,
ERRORFIELD VARCHAR(20)  NULL,
TCN VARCHAR(18)  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_ClaimETRRErrorID_ClaimETRRError PRIMARY KEY CLUSTERED (ClaimETRRErrorID)
);

CREATE TABLE ClaimETRR (
ClaimETRRID INT IDENTITY(1,1) NOT NULL,
FileName VARCHAR(250)  NULL,
EDIRECORDCOUNT INT  NULL,
EDIDATE DATETIME  NULL,
DateTimeStamp DATETIME  NULL,
Doc VARCHAR(MAX)  NULL,
Constraint PK_ClaimETRRID_ClaimETRR PRIMARY KEY CLUSTERED (ClaimETRRID)
);

CREATE TABLE ClaimExternal835Messages (
MSGID INT IDENTITY(1,1) NOT NULL,
DateTimeStamp DATETIME  NULL,
ClaimSubmitterID VARCHAR(50)  NULL,
ClaimStatusCode INT  NULL,
ClaimICN VARCHAR(50)  NULL,
ClaimPaymentAmt VARCHAR(8)  NULL,
ClaimChargeAmt VARCHAR(8)  NULL,
ClaimFileName VARCHAR(200)  NULL,
FileNumber835 INT  NULL,
Constraint PK_MSGID_ClaimExternal835Messages PRIMARY KEY CLUSTERED (MSGID)
);

CREATE TABLE ClaimFailedMsgLog (
MsgID INT IDENTITY(1,1) NOT NULL,
ClaimStatusID INT  NULL,
DateTimeStamp DATETIME  NULL,
NumberOfTries INT  NULL,
Constraint PK_MsgID_ClaimFailedMsgLog PRIMARY KEY CLUSTERED (MsgID)
);

CREATE TABLE ClaimInstitutional (
ClaimInstitutionalID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
StatementStartDate DATETIME  NOT NULL,
StatementEndDate DATETIME  NOT NULL,
AdmissionDate DATETIME  NULL,
DischargeDateTime DATETIME  NULL,
AdmissionTypeCode VARCHAR(250)  NULL,
AdmissionSourceCode VARCHAR(250)  NULL,
PatientStatusCode VARCHAR(250)  NOT NULL,
Userstamp INT  NOT NULL,
DatetimeStamp DATETIME  NOT NULL,
NewbornAdmissionTypeSourceCode VARCHAR(250)  NULL,
AdmissionTime VARCHAR(5)  NULL,
Constraint PK_ClaimInstitutionalID_ClaimInstitutional PRIMARY KEY CLUSTERED (ClaimInstitutionalID)
);

CREATE TABLE ClaimMMISLog (
ClaimMMISLogID INT IDENTITY(1,1) NOT NULL,
FileName VARCHAR(250)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PayloadID VARCHAR(16)  NOT NULL,
SentToMMISDateTimeStamp DATETIME  NULL,
ReceivedTA1 BIT  NOT NULL,
Received999FileName VARCHAR(250)  NULL,
Received999DateTimeStamp DATETIME  NULL,
Constraint PK_ClaimMMISLogID_ClaimMMISLog PRIMARY KEY CLUSTERED (ClaimMMISLogID)
);

CREATE TABLE ClaimPreviousAdjustment (
ClaimPreviousAdjustmentID INT IDENTITY(1,1) NOT NULL,
ClaimAdjustmentID INT  NULL,
AdjustmentAmount VARCHAR(8)  NULL,
AdjustedBy INT  NULL,
AdjustedDate DATETIME  NULL,
ClaimID INT  NULL,
AdjustmentCodeID INT  NULL,
Unit NUMERIC(19,2)  NULL,
AdjustmentType VARCHAR(100)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
PrimaryAdjustment BIT  NULL,
DateMoved DATETIME  NULL,
ClaimRemittanceID INT  NULL,
Constraint PK_ClaimPreviousAdjustmentID_ClaimPreviousAdjustment PRIMARY KEY CLUSTERED (ClaimPreviousAdjustmentID)
);

CREATE TABLE ClaimPreviousRemittance (
ClaimPreviousRemittanceID INT IDENTITY(1,1) NOT NULL,
ClaimRemittanceID INT  NULL,
RemittanceDate DATETIME  NULL,
ClaimChargeAmount VARCHAR(8)  NULL,
RemittanceRemark VARCHAR(100)  NULL,
RemittanceStatus VARCHAR(100)  NULL,
ClaimID INT  NULL,
ClaimPaymentAmount VARCHAR(8)  NULL,
PatientResponsibilityAmount VARCHAR(8)  NULL,
TransactionHandlingCode VARCHAR(100)  NULL,
PaymentMethod VARCHAR(100)  NULL,
PaymentFormatCode VARCHAR(100)  NULL,
GLStatus VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Doc VARCHAR(MAX)  NULL,
Received835FileName VARCHAR(50)  NULL,
Sent835FileName VARCHAR(50)  NULL,
VoucherDetailID INT  NULL,
SecondaryVoucherDetailID INT  NULL,
primaryamount VARCHAR(8)  NULL,
SecondaryAmount VARCHAR(8)  NULL,
EOPDATE DATETIME  NULL,
Suppress BIT  NOT NULL,
[External] BIT  NULL,
Generated835 BIT  NULL,
FileName835 VARCHAR(250)  NULL,
FileNumber835 INT  NULL,
SplitFileNumber835 INT  NULL,
SysError BIT  NULL,
UserExcluded BIT  NULL,
ValidationStatus VARCHAR(200)  NULL,
PVLogID INT  NULL,
DateMoved DATETIME  NULL,
Constraint PK_ClaimPreviousRemittanceID_ClaimPreviousRemittance PRIMARY KEY CLUSTERED (ClaimPreviousRemittanceID)
);

CREATE TABLE ClaimPreviousServiceAdjustment (
ClaimPreviousServiceAdjustmentID INT IDENTITY(1,1) NOT NULL,
ClaimServiceAdjustmentID INT  NULL,
AdjustmentAmount VARCHAR(8)  NULL,
AdjustedBy INT  NULL,
AdjustedDate DATETIME  NULL,
AdjustmentCodeID INT  NULL,
Unit NUMERIC(19,4)  NULL,
ClaimServiceID INT  NULL,
AdjustmentType VARCHAR(100)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
PrimaryAdjustment BIT  NULL,
DateMoved DATETIME  NULL,
ClaimServiceRemittanceID INT  NULL,
Constraint PK_ClaimPreviousServiceAdjustmentID_ClaimPreviousServiceAdjustment PRIMARY KEY CLUSTERED (ClaimPreviousServiceAdjustmentID)
);

CREATE TABLE ClaimPreviousServiceRemittance (
ClaimPreviousServiceRemittanceID INT IDENTITY(1,1) NOT NULL,
ClaimServiceRemittanceID INT  NULL,
ClaimServiceID INT  NULL,
ChargeAmount VARCHAR(8)  NULL,
PaymentAmount VARCHAR(8)  NULL,
Unit NUMERIC(19,4)  NULL,
RevenueCode INT  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
DateMoved DATETIME  NULL,
ClaimRemittanceID INT  NULL,
Constraint PK_ClaimPreviousServiceRemittanceID_ClaimPreviousServiceRemittance PRIMARY KEY CLUSTERED (ClaimPreviousServiceRemittanceID)
);

CREATE TABLE ClaimProvider (
ClaimProviderID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
ProviderType VARCHAR(100)  NOT NULL,
LastNameAgency VARCHAR(75)  NOT NULL,
FirstName VARCHAR(30)  NULL,
GroupNo VARCHAR(50)  NULL,
MiddleName VARCHAR(30)  NULL,
Address1 VARCHAR(100)  NOT NULL,
Address2 VARCHAR(100)  NULL,
City VARCHAR(30)  NOT NULL,
State VARCHAR(100)  NOT NULL,
Zip VARCHAR(11)  NOT NULL,
ContactName VARCHAR(100)  NULL,
Phone VARCHAR(16)  NULL,
ProviderID INT  NULL,
ProviderIDQualifier VARCHAR(100)  NOT NULL,
EntityTypeQualifier VARCHAR(100)  NOT NULL,
SecID INT  NULL,
MemberID INT  NULL,
VendorID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SenderID VARCHAR(15)  NULL,
NPI VARCHAR(25)  NULL,
BillingProviderLastName VARCHAR(100)  NULL,
BillingProviderIdentifier VARCHAR(100)  NULL,
BillingProviderEIN VARCHAR(100)  NULL,
BillingProviderID VARCHAR(100)  NULL,
Taxonomy VARCHAR(100)  NULL,
AltProviderID VARCHAR(25)  NULL,
Constraint PK_ClaimProviderID_ClaimProvider PRIMARY KEY CLUSTERED (ClaimProviderID)
);

CREATE TABLE ClaimPVServiceCodes (
ClaimPVServiceCodesID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimPVServiceCodesID_ClaimPVServiceCodes PRIMARY KEY CLUSTERED (ClaimPVServiceCodesID)
);

CREATE TABLE ClaimReimbursementOutpatientInformation (
ClaimOutpatientInformationID INT IDENTITY(1,1) NOT NULL,
ClaimReimbursementID INT  NULL,
Percentage INT  NULL,
HCPCSPayableAmount INT  NULL,
ClaimPaymentRemarkCode03 VARCHAR(20)  NULL,
ClaimPaymentRemarkCode04 VARCHAR(20)  NULL,
ClaimPaymentRemarkCode05 VARCHAR(20)  NULL,
ClaimPaymentRemarkCode06 VARCHAR(20)  NULL,
ClaimPaymentRemarkCode07 VARCHAR(20)  NULL,
ESRDPaymentAmount INT  NULL,
NonpayableAmount INT  NULL,
Constraint PK_ClaimOutpatientInformationID_ClaimReimbursementOutpatientInformation PRIMARY KEY CLUSTERED (ClaimOutpatientInformationID)
);

CREATE TABLE ClaimReimbursement (
ClaimReimbursementID INT IDENTITY(1,1) NOT NULL,
ReimbursementDate DATETIME  NULL,
ClaimChargeAmount VARCHAR(8)  NOT NULL,
ReimbursementRemark VARCHAR(100)  NULL,
ReimbursementStatus VARCHAR(100)  NOT NULL,
ClaimID INT  NOT NULL,
ClaimPaymentAmount VARCHAR(8)  NULL,
PatientResponsibilityAmount VARCHAR(8)  NULL,
TransactionHandlingCode VARCHAR(100)  NULL,
PaymentMethod VARCHAR(100)  NULL,
PaymentFormatCode VARCHAR(100)  NULL,
GLStatus VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Doc VARCHAR(MAX)  NULL,
Received835FileName VARCHAR(50)  NULL,
Sent835FileName VARCHAR(50)  NULL,
PrimaryAmount VARCHAR(8)  NULL,
SecondaryAmount VARCHAR(8)  NULL,
VoucherDetailid INT  NULL,
SecondaryVoucherDetailid INT  NULL,
EOPDate DATETIME  NULL,
Suppress BIT  NOT NULL,
[External] BIT  NULL,
Generated835 BIT  NULL,
FileName835 VARCHAR(150)  NULL,
FileNumber835 INT  NULL,
SplitFileNumber835 INT  NULL,
PVLogID INT  NULL,
SysError BIT  NULL,
UserExcluded BIT  NULL,
ValidationStatus VARCHAR(200)  NULL,
CurrentPaymentAmount VARCHAR(8)  NULL,
Constraint PK_ClaimReimbursementID_ClaimReimbursement PRIMARY KEY CLUSTERED (ClaimReimbursementID)
);

CREATE TABLE ClaimRemittance835BPR (
BPRID INT IDENTITY(1,1) NOT NULL,
BPRAmount VARCHAR(8)  NOT NULL,
BPRAction VARCHAR(3)  NULL,
RemittanceDate DATETIME  NOT NULL,
UserStamp VARCHAR(50)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
FileName835 VARCHAR(150)  NULL,
FileNumber835 INT  NULL,
NumberOfSplitFiles835 INT  NULL,
ADJREASON VARCHAR(100)  NULL,
InvalidProvider BIT  NOT NULL,
Constraint PK_BPRID_ClaimRemittance835BPR PRIMARY KEY CLUSTERED (BPRID)
);

CREATE TABLE ClaimRemittanceCode (
ClaimRemittanceCodeID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
RemittanceRemarkID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimRemittanceCodeID_ClaimRemittanceCode PRIMARY KEY CLUSTERED (ClaimRemittanceCodeID)
);

CREATE TABLE ClaimRemittance (
ClaimRemittanceID INT IDENTITY(1,1) NOT NULL,
RemittanceDate DATETIME  NULL,
ClaimChargeAmount VARCHAR(8)  NOT NULL,
RemittanceRemark VARCHAR(100)  NULL,
RemittanceStatus VARCHAR(100)  NOT NULL,
ClaimID INT  NOT NULL,
ClaimPaymentAmount VARCHAR(8)  NULL,
PatientResponsibilityAmount VARCHAR(8)  NULL,
TransactionHandlingCode VARCHAR(100)  NULL,
PaymentMethod VARCHAR(100)  NULL,
PaymentFormatCode VARCHAR(100)  NULL,
GLStatus VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Doc VARCHAR(MAX)  NULL,
Received835FileName VARCHAR(50)  NULL,
Sent835FileName VARCHAR(50)  NULL,
VoucherDetailID INT  NULL,
SecondaryVoucherDetailID INT  NULL,
primaryamount VARCHAR(8)  NULL,
SecondaryAmount VARCHAR(8)  NULL,
EOPDATE DATETIME  NULL,
Suppress BIT  NOT NULL,
[External] BIT  NULL,
Generated835 BIT  NULL,
FileName835 VARCHAR(250)  NULL,
FileNumber835 INT  NULL,
SplitFileNumber835 INT  NULL,
SysError BIT  NULL,
UserExcluded BIT  NULL,
ValidationStatus VARCHAR(200)  NULL,
PVLogID INT  NULL,
RANumber VARCHAR(20)  NULL,
PaymentDate DATETIME  NULL,
CheckNo VARCHAR(50)  NULL,
Constraint PK_ClaimRemittanceID_ClaimRemittance PRIMARY KEY CLUSTERED (ClaimRemittanceID)
);

CREATE TABLE ClaimResubQueue (
ClaimResubQueueID INT IDENTITY(1,1) NOT NULL,
OriginalClaimID INT  NOT NULL,
DateTimeAddedToQueue DATETIME  NOT NULL,
BatchNo VARCHAR(80)  NULL,
ResubDateTime DATETIME  NULL,
ResubClaimID INT  NULL,
ResubClaimDateTime DATETIME  NULL,
Datetimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ClaimResubQueueID_ClaimResubQueue PRIMARY KEY CLUSTERED (ClaimResubQueueID)
);

CREATE TABLE ClaimRollupBatch (
ClaimRollupBatchID INT IDENTITY(1,1) NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimRollupBatchID_ClaimRollupBatch PRIMARY KEY CLUSTERED (ClaimRollupBatchID)
);

CREATE TABLE ClaimRollupServices (
ClaimRollupServicesID INT IDENTITY(1,1) NOT NULL,
ClaimRollupID INT  NOT NULL,
ClaimServiceID INT  NOT NULL,
ServiceLine INT  NOT NULL,
ActiveVoid BIT  NOT NULL,
Constraint PK_ClaimRollupServicesID_ClaimRollupServices PRIMARY KEY CLUSTERED (ClaimRollupServicesID)
);

CREATE TABLE ClaimRollup (
ClaimRollupID INT IDENTITY(1,1) NOT NULL,
RollupNumber VARCHAR(25)  NULL,
ICN VARCHAR(30)  NULL,
XML VARCHAR(MAX)  NULL,
Sent BIT  NULL,
ClaimRollupBatchID INT  NOT NULL,
Status VARCHAR(20)  NULL,
Voided BIT  NULL,
ClaimType VARCHAR(10)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimRollupID_ClaimRollup PRIMARY KEY CLUSTERED (ClaimRollupID)
);

CREATE TABLE ClaimServiceAdjustmentReimbursement (
ClaimServiceAdjustmentReimbursementID INT IDENTITY(1,1) NOT NULL,
AdjustmentAmount VARCHAR(8)  NOT NULL,
AdjustedBy INT  NULL,
AdjustedDate DATETIME  NOT NULL,
AdjustmentCodeID INT  NOT NULL,
Unit NUMERIC(19,4)  NOT NULL,
ClaimServiceID INT  NOT NULL,
AdjustmentType VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PrimaryAdjustment BIT  NOT NULL,
ClaimServiceReimbursementID INT  NULL,
Constraint PK_ClaimServiceAdjustmentReimbursementID_ClaimServiceAdjustmentReimbursement PRIMARY KEY CLUSTERED (ClaimServiceAdjustmentReimbursementID)
);

CREATE TABLE ClaimServiceAdjustment (
ClaimServiceAdjustmentID INT IDENTITY(1,1) NOT NULL,
AdjustmentAmount VARCHAR(8)  NOT NULL,
AdjustedBy INT  NULL,
AdjustedDate DATETIME  NOT NULL,
AdjustmentCodeID INT  NOT NULL,
Unit NUMERIC(19,4)  NOT NULL,
ClaimServiceID INT  NOT NULL,
AdjustmentType VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PrimaryAdjustment BIT  NOT NULL,
Constraint PK_ClaimServiceAdjustmentID_ClaimServiceAdjustment PRIMARY KEY CLUSTERED (ClaimServiceAdjustmentID)
);

CREATE TABLE ClaimServiceDental (
ClaimServiceDentalID INT IDENTITY(1,1) NOT NULL,
ClaimServiceID INT  NULL,
AreaOralCavity VARCHAR(100)  NULL,
ToothSystem VARCHAR(100)  NULL,
ToothNumbersOrLetters VARCHAR(300)  NULL,
DatetimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
ToothSurface VARCHAR(100)  NULL,
Constraint PK_ClaimServiceDentalID_ClaimServiceDental PRIMARY KEY CLUSTERED (ClaimServiceDentalID)
);

CREATE TABLE ClaimServiceDiagnosis (
ClaimsServiceDiagnosisID INT IDENTITY(1,1) NOT NULL,
ClaimServiceID INT  NOT NULL,
ClaimDiagnosisID INT  NOT NULL,
SortOrder INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimsServiceDiagnosisID_ClaimServiceDiagnosis PRIMARY KEY CLUSTERED (ClaimsServiceDiagnosisID)
);

CREATE TABLE CLaimServicePayment (
ClaimServicePayorID INT IDENTITY(1,1) NOT NULL,
ClaimServiceID INT  NOT NULL,
OtherPayerID INT  NOT NULL,
PaidAmount VARCHAR(8)  NOT NULL,
MedicalProcedureID VARCHAR(18)  NOT NULL,
ProductServiceIDQualifier VARCHAR(100)  NOT NULL,
PaidUnit NUMERIC(19,4)  NOT NULL,
Modifier1 VARCHAR(100)  NULL,
ProductServiceID INT  NOT NULL,
Modifier2 VARCHAR(100)  NULL,
Modifier3 VARCHAR(100)  NULL,
Modifier4 VARCHAR(100)  NULL,
Description VARCHAR(100)  NULL,
AssignedNumber INT  NULL,
ReasonCode VARCHAR(50)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimServicePayorID_CLaimServicePayment PRIMARY KEY CLUSTERED (ClaimServicePayorID)
);

CREATE TABLE ClaimService (
ClaimServiceID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
Modifier1 VARCHAR(100)  NULL,
Modifier2 VARCHAR(100)  NULL,
Modifier3 VARCHAR(100)  NULL,
Modifier4 VARCHAR(100)  NULL,
ServiceType VARCHAR(100)  NULL,
ServiceAmount VARCHAR(8)  NOT NULL,
Unit NUMERIC(19,4)  NOT NULL,
UnitType VARCHAR(100)  NULL,
PlaceOfService VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Emergency BIT  NOT NULL,
ServiceID INT  NULL,
COBFlag BIT  NOT NULL,
AuthServiceID INT  NULL,
SalesTaxAmount VARCHAR(8)  NULL,
CurrentUnits INT  NULL,
ApprovedAmount VARCHAR(8)  NULL,
CurrentServiceAmount VARCHAR(8)  NULL,
PostageClaimedAmount VARCHAR(8)  NULL,
ProcedureCode VARCHAR(25)  NULL,
CopayStatus BIT  NOT NULL,
VServiceID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ServiceCode VARCHAR(25)  NOT NULL,
Status VARCHAR(100)  NOT NULL,
AdjustmentCodeID INT  NULL,
PrimaryIndexCode VARCHAR(100)  NULL,
PrimarySubObjectCode VARCHAR(100)  NULL,
ServiceLine INT  NULL,
ServiceLineControlNumber VARCHAR(50)  NULL,
Description VARCHAR(255)  NULL,
SecondaryIndexCode VARCHAR(100)  NULL,
SecondarySubObjectCode VARCHAR(100)  NULL,
SecondaryPercent NUMERIC(19,2)  NULL,
VendorContractID INT  NULL,
PrimaryPercent NUMERIC(19,2)  NULL,
LevelOfCare VARCHAR(100)  NULL,
PriorityPopulation VARCHAR(50)  NULL,
PrimaryPaymentAmount VARCHAR(8)  NULL,
SecondaryPaymentAmount VARCHAR(8)  NULL,
SecondaryReportingAmount VARCHAR(8)  NULL,
ControlNumberSequence INT  NOT NULL,
FiscalYear INT  NULL,
RemittedFiscalYear INT  NULL,
PayerType VARCHAR(20)  NULL,
RemittedContractID INT  NULL,
SentToMMISDateTime DATETIME  NULL,
RemarkCode VARCHAR(20)  NULL,
NoShow BIT  NOT NULL,
NoShowReason VARCHAR(100)  NULL,
MemberID INT  NULL,
ServiceRevenueCode VARCHAR(100)  NULL,
ModifierBypass VARCHAR(100)  NULL,
Constraint PK_ClaimServiceID_ClaimService PRIMARY KEY CLUSTERED (ClaimServiceID)
);

CREATE TABLE ClaimServiceProvider (
ClaimServiceProviderID INT IDENTITY(1,1) NOT NULL,
ProviderType VARCHAR(100)  NOT NULL,
LastNameAgency VARCHAR(75)  NOT NULL,
FirstName VARCHAR(30)  NULL,
GroupNo VARCHAR(50)  NULL,
MiddleName VARCHAR(30)  NULL,
Address1 VARCHAR(100)  NOT NULL,
Address2 VARCHAR(100)  NULL,
City VARCHAR(30)  NOT NULL,
State VARCHAR(100)  NOT NULL,
Zip VARCHAR(11)  NOT NULL,
ContactName VARCHAR(100)  NULL,
Phone VARCHAR(16)  NULL,
ProviderID INT  NULL,
ProviderIDQualifier VARCHAR(100)  NOT NULL,
EntityTypeQualifier VARCHAR(100)  NOT NULL,
SecID INT  NULL,
ClaimServiceID INT  NOT NULL,
MemberID INT  NULL,
VendorID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
NPI VARCHAR(25)  NULL,
Constraint PK_ClaimServiceProviderID_ClaimServiceProvider PRIMARY KEY CLUSTERED (ClaimServiceProviderID)
);

CREATE TABLE ClaimServiceReimbursement (
ClaimServiceReimbursementID INT IDENTITY(1,1) NOT NULL,
ClaimServiceID INT  NOT NULL,
ChargeAmount VARCHAR(8)  NOT NULL,
PaymentAmount VARCHAR(8)  NULL,
Unit NUMERIC(19,4)  NOT NULL,
RevenueCode INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ClaimReimbursementID INT  NULL,
Constraint PK_ClaimServiceReimbursementID_ClaimServiceReimbursement PRIMARY KEY CLUSTERED (ClaimServiceReimbursementID)
);

CREATE TABLE ClaimServiceRemittance (
ClaimServiceRemittanceID INT IDENTITY(1,1) NOT NULL,
ClaimServiceID INT  NOT NULL,
ChargeAmount VARCHAR(8)  NOT NULL,
PaymentAmount VARCHAR(8)  NULL,
Unit NUMERIC(19,4)  NOT NULL,
RevenueCode INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimServiceRemittanceID_ClaimServiceRemittance PRIMARY KEY CLUSTERED (ClaimServiceRemittanceID)
);

CREATE TABLE CLaimServiceRemittanceCode (
ClaimServiceRemittanceCodeID INT IDENTITY(1,1) NOT NULL,
ClaimServiceID INT  NOT NULL,
RemittanceRemarkID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimServiceRemittanceCodeID_CLaimServiceRemittanceCode PRIMARY KEY CLUSTERED (ClaimServiceRemittanceCodeID)
);

CREATE TABLE CLAIMSTATUS (
ClaimStatusID INT IDENTITY(1,1) NOT NULL,
Claim837LogID INT  NOT NULL,
ProviderID VARCHAR(15)  NULL,
ProviderClaimID VARCHAR(38)  NOT NULL,
Status INT  NOT NULL,
Doc VARCHAR(MAX)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
PrepaidClaim VARCHAR(100)  NULL,
Constraint PK_ClaimStatusID_CLAIMSTATUS PRIMARY KEY CLUSTERED (ClaimStatusID)
);

CREATE TABLE ClaimSubscriber (
ClaimSubscriberID INT IDENTITY(1,1) NOT NULL,
EmployerName VARCHAR(100)  NULL,
SortOrder INT  NULL,
ClaimID INT  NOT NULL,
RelationshipToPatient VARCHAR(100)  NOT NULL,
SubscriberLastNameAgency VARCHAR(30)  NOT NULL,
SubscriberFirstName VARCHAR(30)  NULL,
SubscriberMiddleName VARCHAR(30)  NULL,
SubscriberSuffix VARCHAR(30)  NULL,
SubscriberIDQualifier VARCHAR(100)  NOT NULL,
SubscriberID INT  NOT NULL,
SubscriberAddress1 VARCHAR(100)  NOT NULL,
SubscriberAddress2 VARCHAR(100)  NULL,
SubscriberCity VARCHAR(30)  NOT NULL,
SubscriberState VARCHAR(100)  NOT NULL,
SubscriberZip VARCHAR(11)  NOT NULL,
SubscriberPhone VARCHAR(16)  NULL,
SubscriberDOB DATETIME  NOT NULL,
SubscriberGender VARCHAR(100)  NOT NULL,
SubscriberSSN VARCHAR(11)  NOT NULL,
SubscriberGroupNumber VARCHAR(50)  NULL,
SubscriberPolicyNumber VARCHAR(25)  NULL,
EntityTypeQualifier VARCHAR(100)  NOT NULL,
OtherPayerID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ClaimSubscriberID_ClaimSubscriber PRIMARY KEY CLUSTERED (ClaimSubscriberID)
);

CREATE TABLE ClaimTPLInfo (
ClaimTPLInfoID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NULL,
EntityIdentifierCode VARCHAR(3)  NULL,
EntityTypeQualifier VARCHAR(2)  NULL,
PayerName VARCHAR(60)  NULL,
IdentificationCodeQualifier VARCHAR(2)  NULL,
PayerIdentifier VARCHAR(50)  NULL,
PayerSequence VARCHAR(3)  NULL,
ClaimPaymentAmount VARCHAR(8)  NULL,
ServicePaymentAmount VARCHAR(8)  NULL,
ClaimPaymentDate DATETIME  NULL,
ServicePaymentDate DATETIME  NULL,
Constraint PK_ClaimTPLInfoID_ClaimTPLInfo PRIMARY KEY CLUSTERED (ClaimTPLInfoID)
);

CREATE TABLE ClaimTPLInfoAdjustment (
ClaimTPLInfoAdjustmentID INT IDENTITY(1,1) NOT NULL,
ClaimID INT  NOT NULL,
ClaimServiceID INT  NULL,
GroupCode VARCHAR(2)  NULL,
ReasonCode1 VARCHAR(50)  NULL,
MonetaryAmount1 VARCHAR(8)  NULL,
Quantity1 NUMERIC(19,4)  NULL,
ReasonCode2 VARCHAR(50)  NULL,
MonetaryAmount2 VARCHAR(8)  NULL,
Quantity2 NUMERIC(19,4)  NULL,
ReasonCode3 VARCHAR(50)  NULL,
MonetaryAmount3 VARCHAR(8)  NULL,
Quantity3 NUMERIC(19,4)  NULL,
ReasonCode4 VARCHAR(50)  NULL,
MonetaryAmount4 VARCHAR(8)  NULL,
Quantity4 NUMERIC(19,4)  NULL,
ReasonCode5 VARCHAR(50)  NULL,
MonetaryAmount5 VARCHAR(8)  NULL,
Quantity5 NUMERIC(19,4)  NULL,
ReasonCode6 VARCHAR(50)  NULL,
MonetaryAmount6 VARCHAR(8)  NULL,
Quantity6 NUMERIC(19,4)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ClaimTPLInfoID INT  NULL,
Constraint PK_ClaimTPLInfoAdjustmentID_ClaimTPLInfoAdjustment PRIMARY KEY CLUSTERED (ClaimTPLInfoAdjustmentID)
);

CREATE TABLE CloneAllowedType (
CloneAllowedTypeID INT IDENTITY(1,1) NOT NULL,
CloneSetupID INT  NOT NULL,
AllowedType VARCHAR(100)  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_CloneAllowedTypeID_CloneAllowedType PRIMARY KEY CLUSTERED (CloneAllowedTypeID)
);

CREATE TABLE CloneSetup (
CloneSetupID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(100)  NOT NULL,
Disposition VARCHAR(100)  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_CloneSetupID_CloneSetup PRIMARY KEY CLUSTERED (CloneSetupID)
);

CREATE TABLE cm_Audit (
Id INT IDENTITY(1,1) NOT NULL,
UserId INT  NOT NULL,
Section VARCHAR(250)  NOT NULL,
Action VARCHAR(500)  NOT NULL,
DetailedAction VARCHAR(MAX)  NULL,
CreatedOn DATETIME  NOT NULL,
Constraint PK_Id_cm_Audit PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE cm_Configuration (
ConfigId INT IDENTITY(1,1) NOT NULL,
[Key] VARCHAR(200)  NOT NULL,
Value VARCHAR(MAX)  NOT NULL,
Value2 VARCHAR(MAX)  NULL,
Value3 VARCHAR(MAX)  NULL,
Value4 VARCHAR(MAX)  NULL,
CreatedOn DATETIME  NULL,
ModifiedOn DATETIME  NULL,
Constraint PK_ConfigId_cm_Configuration PRIMARY KEY CLUSTERED (ConfigId)
);

CREATE TABLE CMTransactions (
CMTranID NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
TranDate DATETIME  NOT NULL,
Amount VARCHAR(8)  NOT NULL,
VendorID INT  NOT NULL,
PaymentGroupID NUMERIC(18,0)  NULL,
PaymentSequenceNo INT  NULL,
ReversedTranID NUMERIC(18,0)  NULL,
Status VARCHAR(100)  NULL,
ExportedCreditAccount VARCHAR(20)  NULL,
ExportedDebitAccount VARCHAR(20)  NULL,
ExportedReferenceNumber VARCHAR(20)  NULL,
ExportedApplyToDate DATETIME  NULL,
ExportedDate DATETIME  NULL,
PostingDate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ParentVendorID NUMERIC(10,0)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_CMTranID_CMTransactions PRIMARY KEY CLUSTERED (CMTranID)
);

CREATE TABLE ConfigPackage (
PackageID INT IDENTITY(1,1) NOT NULL,
PackageName VARCHAR(64)  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp VARCHAR(10)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
IsTemplate INT  NOT NULL,
ConfigPackageTypeID INT  NOT NULL,
Constraint PK_PackageID_ConfigPackage PRIMARY KEY CLUSTERED (PackageID)
);

CREATE TABLE ConfigPackageType (
ConfigPackageTypeID INT IDENTITY(1,1) NOT NULL,
PackageTypeName VARCHAR(255)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_ConfigPackageTypeID_ConfigPackageType PRIMARY KEY CLUSTERED (ConfigPackageTypeID)
);

CREATE TABLE ConsumerModuleUser (
ConsumerModuleUserID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
ModuleUserID VARCHAR(100)  NOT NULL,
PasswordHash VARCHAR(64)  NULL,
AccessRole VARCHAR(100)  NOT NULL,
Status VARCHAR(100)  NOT NULL,
CredentialsSent DATETIME  NULL,
AccessExpiration DATETIME  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AdminUser BIT  NULL,
Constraint PK_ConsumerModuleUserID_ConsumerModuleUser PRIMARY KEY CLUSTERED (ConsumerModuleUserID)
);

CREATE TABLE ConsumerModuleUserRelation (
ConsumerModuleUserRelationID INT IDENTITY(1,1) NOT NULL,
ConsumerModuleUserID INT  NOT NULL,
ModuleUserType VARCHAR(100)  NOT NULL,
UserIsConsumer BIT  NOT NULL,
RecID INT  NULL,
Notification VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConsumerModuleUserRelationID_ConsumerModuleUserRelation PRIMARY KEY CLUSTERED (ConsumerModuleUserRelationID)
);

CREATE TABLE ConsumersSANSWorkers (
ConsumersSANSWorkersID INT IDENTITY(1,1) NOT NULL,
MemberID INT  NULL,
SanID INT  NOT NULL,
WorkerType VARCHAR(50)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ConsumersSANSWorkersID_ConsumersSANSWorkers PRIMARY KEY CLUSTERED (ConsumersSANSWorkersID)
);

CREATE TABLE CONTACT (
CONTACTID INT IDENTITY(1,1) NOT NULL,
FIRSTNAME VARCHAR(30)  NOT NULL,
LASTNAME VARCHAR(30)  NOT NULL,
MIDDLENAME VARCHAR(30)  NULL,
ALIAS VARCHAR(100)  NULL,
DOB DATETIME  NULL,
SSN VARCHAR(11)  NULL,
STREET VARCHAR(100)  NULL,
CITY VARCHAR(30)  NULL,
STATE VARCHAR(100)  NULL,
ZIPCODE VARCHAR(10)  NULL,
PHONE VARCHAR(16)  NULL,
RESIDENCETYPE VARCHAR(100)  NULL,
CENSUSTRACT VARCHAR(7)  NULL,
DISTRICT VARCHAR(25)  NULL,
GENDER VARCHAR(100)  NULL,
RACE VARCHAR(MAX)  NULL,
HISPORIGIN INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AGE VARCHAR(8)  NULL,
AGEGROUP VARCHAR(30)  NULL,
FIPSCODE VARCHAR(100)  NULL,
FAMILYSIZE INT  NULL,
STREET2 VARCHAR(100)  NULL,
ALIENID VARCHAR(11)  NULL,
COUNTRYORIGIN VARCHAR(20)  NULL,
BIRTHPLACE VARCHAR(100)  NULL,
BIRTHCERTIFICATE VARCHAR(20)  NULL,
RELIGION VARCHAR(100)  NULL,
SPIRITUALORIENTATION VARCHAR(20)  NULL,
HAIRCOLOR VARCHAR(100)  NULL,
EYECOLOR VARCHAR(100)  NULL,
WEIGHT VARCHAR(10)  NULL,
HEIGHT VARCHAR(20)  NULL,
IDENTIFYINGMARKS VARCHAR(255)  NULL,
ADDRESSTYPE VARCHAR(100)  NULL,
PLANGUAGE VARCHAR(100)  NULL,
SLANGUAGE VARCHAR(100)  NULL,
CONSUMERPICTURE VARCHAR(200)  NULL,
WORKPHONE VARCHAR(16)  NULL,
CELLPHONE VARCHAR(16)  NULL,
PAGER VARCHAR(16)  NULL,
MESSAGEPHONE VARCHAR(16)  NULL,
RESCOUNTY VARCHAR(100)  NULL,
PAYCOUNTY VARCHAR(100)  NULL,
LEGALCOUNTY VARCHAR(100)  NULL,
CITIZENSHIP VARCHAR(100)  NULL,
LENRESIDENCY VARCHAR(10)  NULL,
CHURCHMEMBER INT  NULL,
CHURCH VARCHAR(50)  NULL,
EMAIL VARCHAR(60)  NULL,
COUNTRY VARCHAR(25)  NULL,
CURMARSTATUS VARCHAR(100)  NULL,
HOMEPHONE2 VARCHAR(16)  NULL,
INDIANBLOOD VARCHAR(100)  NULL,
TRIBE VARCHAR(50)  NULL,
HOH INT  NULL,
APPTYPE VARCHAR(5)  NULL,
SALUTATION VARCHAR(100)  NULL,
TITLE VARCHAR(50)  NULL,
ETHNICITYLOOKUP VARCHAR(100)  NULL,
ASIANLOOKUP VARCHAR(100)  NULL,
LATINOLOOKUP VARCHAR(100)  NULL,
PARISHLOOKUP VARCHAR(100)  NULL,
PACIFICISLANDER VARCHAR(100)  NULL,
RECORDSOURCE VARCHAR(30)  NULL,
DOD DATETIME  NULL,
USERSTAMP INT  NOT NULL,
DLNUMBER VARCHAR(20)  NULL,
DLSTATE VARCHAR(100)  NULL,
WEBSITE VARCHAR(50)  NULL,
SIN VARCHAR(11)  NULL,
EXTENSION VARCHAR(9)  NULL,
FAX VARCHAR(50)  NULL,
Confidential BIT  NOT NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericText3 VARCHAR(100)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(100)  NULL,
GenericDropDown5 VARCHAR(100)  NULL,
GenericDropDown6 VARCHAR(100)  NULL,
GenericDropDown7 VARCHAR(100)  NULL,
GenericDropDown8 VARCHAR(100)  NULL,
GenericDropDown9 VARCHAR(100)  NULL,
GenericDropDown10 VARCHAR(100)  NULL,
GenericNumeric1 NUMERIC(19,2)  NULL,
GenericNumeric2 NUMERIC(19,2)  NULL,
Suffix VARCHAR(10)  NULL,
MailingOption VARCHAR(100)  NULL,
InterpreterNeeded BIT  NULL,
SexualOrientation VARCHAR(100)  NULL,
Transgender VARCHAR(100)  NULL,
CauseOfDeath VARCHAR(1000)  NULL,
VeteranStatus VARCHAR(100)  NULL,
NameType VARCHAR(100)  NULL,
ConsumerGroup BIT  NULL,
ConsumerGroupName VARCHAR(100)  NULL,
DODAction VARCHAR(50)  NULL,
DODFileNumber VARCHAR(25)  NULL,
MultiRace VARCHAR(MAX)  NULL,
GenderIdentity VARCHAR(50)  NULL,
Pronouns VARCHAR(50)  NULL,
AgeText VARCHAR(50)  NULL,
Constraint PK_CONTACTID_CONTACT PRIMARY KEY CLUSTERED (CONTACTID)
);

CREATE TABLE ContactAddress (
ContactAddressID INT IDENTITY(1,1) NOT NULL,
AddressType VARCHAR(100)  NULL,
AddressCategory VARCHAR(100)  NULL,
[Primary] BIT  NOT NULL,
Street VARCHAR(100)  NULL,
Street2 VARCHAR(100)  NULL,
City VARCHAR(30)  NULL,
State VARCHAR(100)  NULL,
ZipCode VARCHAR(10)  NULL,
PostalCode VARCHAR(30)  NULL,
CensusTract VARCHAR(7)  NULL,
District VARCHAR(25)  NULL,
Country VARCHAR(25)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
Comments VARCHAR(MAX)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
ContactID INT  NOT NULL,
ContactType VARCHAR(30)  NULL,
AddressValid BIT  NULL,
County VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
AddressValidDate DATETIME  NULL,
GPSLocation VARCHAR(50)  NULL,
DescriptiveAddress VARCHAR(4000)  NULL,
RecordSource VARCHAR(30)  NULL,
Rural VARCHAR(100)  NULL,
Latitude NUMERIC(19,6)  NULL,
Longitude NUMERIC(19,6)  NULL,
Constraint PK_ContactAddressID_ContactAddress PRIMARY KEY CLUSTERED (ContactAddressID)
);

CREATE TABLE ContactEmail (
ContactEmailID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(500)  NULL,
ContactType VARCHAR(100)  NOT NULL,
EmailType VARCHAR(100)  NULL,
EmailCategory VARCHAR(100)  NULL,
EmailValid BIT  NULL,
Email VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
Constraint PK_ContactEmailID_ContactEmail PRIMARY KEY CLUSTERED (ContactEmailID)
);

CREATE TABLE ContactEnrollment (
ContactEnrollmentID INT IDENTITY(1,1) NOT NULL,
ENROLLID INT  NOT NULL,
Relationship VARCHAR(100)  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
USERSTAMP INT  NOT NULL,
TabType VARCHAR(30)  NOT NULL,
RelateReviewID INT  NOT NULL,
Constraint PK_ContactEnrollmentID_ContactEnrollment PRIMARY KEY CLUSTERED (ContactEnrollmentID)
);

CREATE TABLE ContactIdentifier (
ContactIdentifierID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
Active BIT  NULL,
PrimaryYN BIT  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(500)  NULL,
ContactType VARCHAR(100)  NULL,
IdentifierType VARCHAR(100)  NULL,
IdentifierValue VARCHAR(500)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ContactIdentifierID_ContactIdentifier PRIMARY KEY CLUSTERED (ContactIdentifierID)
);

CREATE TABLE ContactName (
ContactNameID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(500)  NULL,
ContactType VARCHAR(100)  NOT NULL,
NameType VARCHAR(100)  NULL,
FirstName VARCHAR(30)  NULL,
MiddleName VARCHAR(30)  NULL,
LastName VARCHAR(30)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
Constraint PK_ContactNameID_ContactName PRIMARY KEY CLUSTERED (ContactNameID)
);

CREATE TABLE ContactPhone (
ContactPhoneID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(500)  NULL,
ContactType VARCHAR(100)  NOT NULL,
PhoneType VARCHAR(100)  NOT NULL,
PhoneCategory VARCHAR(100)  NULL,
PhoneValid BIT  NULL,
PhoneCallable BIT  NULL,
Phone VARCHAR(16)  NULL,
Extension VARCHAR(9)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
Constraint PK_ContactPhoneID_ContactPhone PRIMARY KEY CLUSTERED (ContactPhoneID)
);

CREATE TABLE CONTACTROLEINQUIRY (
CONTACTROLEINQUIRYID INT IDENTITY(1,1) NOT NULL,
CONTACTID INT  NOT NULL,
INQUIRYID INT  NOT NULL,
ROLE VARCHAR(100)  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
APPTYPE VARCHAR(2)  NOT NULL,
USERSTAMP INT  NOT NULL,
Constraint PK_CONTACTROLEINQUIRYID_CONTACTROLEINQUIRY PRIMARY KEY CLUSTERED (CONTACTROLEINQUIRYID)
);

CREATE TABLE CONTACTROLEOPENCLOSE (
CONTACTROLEOPENCLOSEID INT IDENTITY(1,1) NOT NULL,
CONTACTID INT  NOT NULL,
OPENID INT  NOT NULL,
ROLE VARCHAR(100)  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
APPTYPE VARCHAR(2)  NOT NULL,
USERSTAMP INT  NOT NULL,
Constraint PK_CONTACTROLEOPENCLOSEID_CONTACTROLEOPENCLOSE PRIMARY KEY CLUSTERED (CONTACTROLEOPENCLOSEID)
);

CREATE TABLE ContentType (
Extension VARCHAR(255)  NOT NULL,
Type VARCHAR(255)  NOT NULL
);

CREATE TABLE COPAYRATES (
COPAYID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
CASENO NUMERIC(10,0)  NULL,
COPAYTYPE VARCHAR(100)  NULL,
AMOUNT NUMERIC(19,4)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
SERVICECODE VARCHAR(12)  NULL,
PERCENTAGE NUMERIC(18,0)  NULL,
INSUREDID INT  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
TERMINATED INT  NULL,
DATETERMINATED DATETIME  NULL,
REASONFORTERMINATION VARCHAR(MAX)  NULL,
VENDORID NUMERIC(18,0)  NULL,
VServiceID NUMERIC(11,0)  NULL,
MAXAMT VARCHAR(8)  NULL,
TieredCoPayerID NUMERIC(10,0)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_COPAYID_COPAYRATES PRIMARY KEY CLUSTERED (COPAYID)
);

CREATE TABLE COUNTRIES (
COUNTRY VARCHAR(50)  NOT NULL,
CountryID INT IDENTITY(1,1) NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_CountryID_COUNTRIES PRIMARY KEY CLUSTERED (CountryID)
);

CREATE TABLE CRITERIA (
CRITERIAID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
FUNDCODE VARCHAR(25)  NULL,
LOWINCOME NUMERIC(19,2)  NULL,
HIGHINCOME NUMERIC(19,2)  NULL,
LOWNUMINFAMILY INT  NULL,
HIGHNUMINFAMILY INT  NULL,
USCITIZEN INT  NULL,
HOH INT  NULL,
MEDICALINS INT  NULL,
LOWAGE INT  NULL,
HIGHAGE INT  NULL,
Constraint PK_CRITERIAID_CRITERIA PRIMARY KEY CLUSTERED (CRITERIAID)
);

CREATE TABLE CSRErrorCode (
CSRErrorCodeID INT IDENTITY(1,1) NOT NULL,
CSRErrorCode INT  NOT NULL,
CSRErrorDescription VARCHAR(100)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
AdjustmentCodeID INT  NOT NULL,
Constraint PK_CSRErrorCodeID_CSRErrorCode PRIMARY KEY CLUSTERED (CSRErrorCodeID)
);

CREATE TABLE CustomForm (
FormId INT IDENTITY(1,1) NOT NULL,
FormIdDynamo VARCHAR(200)  NULL,
FormName VARCHAR(50)  NULL,
FormVersion INT  NULL,
Constraint PK_FormId_CustomForm PRIMARY KEY CLUSTERED (FormId)
);

CREATE TABLE CustomFormField (
FieldId INT IDENTITY(1,1) NOT NULL,
FieldName VARCHAR(200)  NULL,
FieldType VARCHAR(100)  NULL,
ParentFieldId INT  NULL,
FormId INT  NULL,
Constraint PK_FieldId_CustomFormField PRIMARY KEY CLUSTERED (FieldId)
);

CREATE TABLE CustomFormFieldInstance (
FieldInstanceId INT IDENTITY(1,1) NOT NULL,
Question VARCHAR(MAX)  NULL,
Answer VARCHAR(MAX)  NULL,
InstanceId INT  NULL,
FieldId INT  NULL,
Constraint PK_FieldInstanceId_CustomFormFieldInstance PRIMARY KEY CLUSTERED (FieldInstanceId)
);

CREATE TABLE CustomFormFieldOption (
OptionId INT IDENTITY(1,1) NOT NULL,
Label VARCHAR(50)  NULL,
Value VARCHAR(50)  NULL,
FieldId INT  NULL,
Constraint PK_OptionId_CustomFormFieldOption PRIMARY KEY CLUSTERED (OptionId)
);

CREATE TABLE CustomFormInstance (
InstanceId INT IDENTITY(1,1) NOT NULL,
DateCreated DATETIME  NULL,
DateUpdated DATETIME  NULL,
InstanceStatus VARCHAR(50)  NULL,
FormId INT  NULL,
FormIdDynamo VARCHAR(200)  NULL,
UserId INT  NULL,
Constraint PK_InstanceId_CustomFormInstance PRIMARY KEY CLUSTERED (InstanceId)
);

CREATE TABLE CustomFormTriggerSchedule (
TrigerScheduleId INT IDENTITY(1,1) NOT NULL,
Job VARCHAR(150)  NULL,
LastRun DATETIME  NULL,
Constraint PK_TrigerScheduleId_CustomFormTriggerSchedule PRIMARY KEY CLUSTERED (TrigerScheduleId)
);

CREATE TABLE CustomFormUser (
UserId INT IDENTITY(1,1) NOT NULL,
UserName VARCHAR(50)  NULL,
Constraint PK_UserId_CustomFormUser PRIMARY KEY CLUSTERED (UserId)
);

CREATE TABLE DashboardLevel (
DashLevelID INT IDENTITY(1,1) NOT NULL,
DashLevelName VARCHAR(100)  NOT NULL,
LabelName VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
USERSTAMP INT  NULL,
SystemRequired BIT  NULL,
Type VARCHAR(25)  NULL,
AppType VARCHAR(5)  NULL,
SortOrder INT  NULL,
Constraint PK_DashLevelID_DashboardLevel PRIMARY KEY CLUSTERED (DashLevelID)
);

CREATE TABLE DashLevelPanel (
DashLevelPanelID INT IDENTITY(1,1) NOT NULL,
Panel VARCHAR(100)  NULL,
DashLevelID INT  NULL,
DATETIMESTAMP DATETIME  NULL,
USERSTAMP INT  NULL,
Constraint PK_DashLevelPanelID_DashLevelPanel PRIMARY KEY CLUSTERED (DashLevelPanelID)
);

CREATE TABLE DashLevelRole (
DashLevelRoleID INT IDENTITY(1,1) NOT NULL,
DashLevelID INT  NULL,
RoleID INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
USERSTAMP INT  NULL,
Constraint PK_DashLevelRoleID_DashLevelRole PRIMARY KEY CLUSTERED (DashLevelRoleID)
);

CREATE TABLE DashPanel (
DashPanelID INT IDENTITY(1,1) NOT NULL,
PanelName VARCHAR(100)  NOT NULL,
PanelDescription VARCHAR(250)  NULL,
Title VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
USERSTAMP INT  NULL,
Version VARCHAR(100)  NULL,
Type VARCHAR(25)  NULL,
Audience VARCHAR(50)  NULL,
Market VARCHAR(50)  NULL,
Constraint PK_DashPanelID_DashPanel PRIMARY KEY CLUSTERED (DashPanelID)
);

CREATE TABLE DATAEXCHANGE (
DEID NUMERIC(10,0)  NOT NULL,
IMEX VARCHAR(1)  NULL,
IMEXNAME VARCHAR(50)  NULL,
DESCRIPTIONS VARCHAR(255)  NULL,
DEFUNCTION VARCHAR(150)  NULL,
ACTIVE INT  NULL,
SCHEDULE VARCHAR(150)  NULL
);

CREATE TABLE DataOwners (
DataOwnerID INT IDENTITY(1,1) NOT NULL,
SourceTablePK NUMERIC(18,0)  NOT NULL,
SourceTableName VARCHAR(50)  NOT NULL,
IsCheckedOut BIT  NULL,
DateOut DATETIME  NOT NULL,
DateIn DATETIME  NULL,
MemberID NUMERIC(18,0)  NOT NULL,
Comment VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_DataOwnerID_DataOwners PRIMARY KEY CLUSTERED (DataOwnerID)
);

CREATE TABLE Day30PendDebug (
DebugID INT IDENTITY(1,1) NOT NULL,
ClaimID VARCHAR(40)  NULL,
Balance VARCHAR(8)  NULL,
Amount VARCHAR(8)  NULL,
FileName VARCHAR(300)  NULL,
VendorContractID INT  NULL,
DWhere VARCHAR(300)  NULL,
Constraint PK_DebugID_Day30PendDebug PRIMARY KEY CLUSTERED (DebugID)
);

CREATE TABLE DEMOGRAPHICS (
CASENO INT IDENTITY(1,1) NOT NULL,
STATUS VARCHAR(100)  NULL,
FUNDCODE VARCHAR(25)  NULL,
SECID VARCHAR(500)  NULL,
TERID VARCHAR(50)  NULL,
FAMILYID VARCHAR(20)  NULL,
RELEASESIGNED NUMERIC(10,0)  NULL,
MEMBERID NUMERIC(10,0)  NULL,
ANNUALINCOME NUMERIC(19,2)  NULL,
MAXANNUALAMOUNT NUMERIC(19,4)  NULL,
INCOMERANGEID INT  NULL,
MEETCRITERIA INT  NULL,
CURRENTTEAM VARCHAR(30)  NULL,
CURRENTMANDATEDSTATUS VARCHAR(100)  NULL,
CURRENTIVESTATUS VARCHAR(100)  NULL,
CURRENTIEPCATEGORY VARCHAR(100)  NULL,
COPAY NUMERIC(19,4)  NULL,
REFERRALSOURCE VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
LEVELOFNEED VARCHAR(100)  NULL,
DSSSPECIALWELFARE INT  NULL,
LASTFAPTDATE DATETIME  NULL,
NEXTFAPTDATE DATETIME  NULL,
MOSTRECENTASSESSMENTSCORE NUMERIC(10,0)  NULL,
MOSTRECENTASSESSMENTDATE DATETIME  NULL,
DUPID NUMERIC(10,0)  NULL,
PAYEENAME VARCHAR(50)  NULL,
CAT1 NUMERIC(10,0)  NULL,
CAT2 NUMERIC(10,0)  NULL,
CAT3 NUMERIC(10,0)  NULL,
REFDATE DATETIME  NULL,
LOCATIONPHYSRECORDS VARCHAR(100)  NULL,
GEN1 VARCHAR(500)  NULL,
GEN2 VARCHAR(500)  NULL,
GEN3 VARCHAR(500)  NULL,
GEN4 VARCHAR(500)  NULL,
GEN5 VARCHAR(100)  NULL,
PURGEDATE DATETIME  NULL,
FEEWAIVED NUMERIC(18,0)  NULL,
MEDICAIDENROLLED INT  NULL,
APPTYPE VARCHAR(5)  NULL,
TRANSMIT INT  NULL,
LASTURDATE DATETIME  NULL,
TargetPopulation1 VARCHAR(100)  NULL,
TargetPopulation2 VARCHAR(100)  NULL,
TargetPopulation3 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
OriginalID VARCHAR(15)  NULL,
GenericDate2 DATETIME  NULL,
GEN6 VARCHAR(50)  NULL,
GEN7 VARCHAR(50)  NULL,
GEN8 VARCHAR(50)  NULL,
GEN9 VARCHAR(50)  NULL,
GEN10 VARCHAR(50)  NULL,
GenericDate3 DATETIME  NULL,
GenericText1 VARCHAR(25)  NULL,
GenericText2 VARCHAR(25)  NULL,
GenericLookup1 VARCHAR(50)  NULL,
GenericLookup2 VARCHAR(50)  NULL,
GenericLookup3 VARCHAR(50)  NULL,
GenericLookup4 VARCHAR(50)  NULL,
MaxAnnualIncome NUMERIC(19,4)  NULL,
UserStamp INT  NOT NULL,
CONTACTID INT  NOT NULL,
GenericCheckbox1 BIT  NOT NULL,
MedicareID VARCHAR(25)  NULL,
MedicaidRedeterminationDate DATETIME  NULL,
Rural VARCHAR(100)  NULL,
LivesAlone VARCHAR(100)  NULL,
Poverty VARCHAR(100)  NULL,
NSIPMealEligible BIT  NULL,
NSIPEligibilityType VARCHAR(100)  NULL,
BelowPovertyLevel VARCHAR(100)  NULL,
NutritionRisk VARCHAR(100)  NULL,
Disabled BIT  NULL,
CognitiveImpairment VARCHAR(100)  NULL,
OtherCommMethod VARCHAR(100)  NULL,
VulnerableCondition VARCHAR(MAX)  NULL,
ADLScore INT  NULL,
IADLScore INT  NULL,
LegalStatus VARCHAR(100)  NULL,
Payments VARCHAR(100)  NULL,
StudentWithADisability VARCHAR(MAX)  NULL,
IndividualWithADisability VARCHAR(MAX)  NULL,
PrimaryDisabilityType VARCHAR(MAX)  NULL,
PrimaryDisabilitySource VARCHAR(MAX)  NULL,
SecondaryDisabilityType VARCHAR(MAX)  NULL,
SecondaryDisabilitySource VARCHAR(MAX)  NULL,
SignificanceOfDisability VARCHAR(MAX)  NULL,
DegreeOfVisualImpairment VARCHAR(100)  NULL,
MajorCauseOfVisualImpairment VARCHAR(100)  NULL,
OtherAgeRelatedImpairments VARCHAR(MAX)  NULL,
NutritionRiskScore INT  NULL,
GenderIdentity VARCHAR(50)  NULL,
Pronouns VARCHAR(50)  NULL,
TobaccoUse VARCHAR(20)  NULL,
AverageIncome VARCHAR(100)  NULL,
Constraint PK_CASENO_DEMOGRAPHICS PRIMARY KEY CLUSTERED (CASENO)
);

CREATE TABLE DeterminedRules (
DeterminedRuleID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
RuleMangerID NUMERIC(10,0)  NULL,
DateDetermined DATETIME  NULL,
CaseNo INT  NOT NULL,
FundCode VARCHAR(25)  NULL,
MemberID INT  NOT NULL,
Result VARCHAR(10)  NULL,
DateTimeStamp DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_DeterminedRuleID_DeterminedRules PRIMARY KEY CLUSTERED (DeterminedRuleID)
);

CREATE TABLE DIAGCODES (
DIAGCODESID INT IDENTITY(1,1) NOT NULL,
DIAGCODE VARCHAR(10)  NULL,
DESCRIPTION VARCHAR(500)  NULL,
AXIS INT  NULL,
CATEGORY VARCHAR(100)  NULL,
CLASS VARCHAR(10)  NULL,
ACTIVE BIT  NOT NULL,
SecCode VARCHAR(10)  NULL,
SortOrder INT  NULL,
MinAge NUMERIC(10,2)  NULL,
MaxAge NUMERIC(10,2)  NULL,
Gender VARCHAR(100)  NULL,
EPSDT BIT  NULL,
PriorAuth BIT  NULL,
EmergencyTreatment BIT  NULL,
Accident BIT  NULL,
Sterilization BIT  NULL,
Hysterectomy BIT  NULL,
Abortion BIT  NULL,
FamilyPlanning BIT  NULL,
Suspense BIT  NULL,
ControlCode VARCHAR(2)  NULL,
ProviderTypeIndicator INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
Type VARCHAR(100)  NULL,
ICDType INT  NULL,
Constraint PK_DIAGCODESID_DIAGCODES PRIMARY KEY CLUSTERED (DIAGCODESID)
);

CREATE TABLE DIAGREVIEW (
DIAGREVIEWID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
REVIEW VARCHAR(100)  NULL,
REVIEWDATE DATETIME  NULL,
AXISIIPRIMARY INT  NULL,
AXISIISECONDARY INT  NULL,
AXISIII INT  NULL,
GAF VARCHAR(7)  NULL,
NUMDAYSTILNEXT INT  NULL,
AXISIVA INT  NULL,
AXISIVB INT  NULL,
AXISIVC INT  NULL,
AXISIVD INT  NULL,
AXISIVE INT  NULL,
AXISIVF INT  NULL,
AXISIVG INT  NULL,
AXISIVH INT  NULL,
AXISIVI INT  NULL,
AXISIVJ INT  NULL,
CURRENTREVIEW INT  NULL,
DATETIMESTAMP DATETIME  NULL,
STATUS VARCHAR(100)  NULL,
DIAGNOSISBY NUMERIC(10,0)  NULL,
SMI VARCHAR(100)  NULL,
PRINCIPALDIAG INT  NULL,
AXISIIIPRIMARY INT  NULL,
AXISIIISECONDARY INT  NULL,
RULEOUTAXIS1PRIMARY INT  NULL,
RULEOUTAXIS1SECONDARY INT  NULL,
RULEOUTAXISIIPRIMARY INT  NULL,
RULEOUTAXISIISECONDARY INT  NULL,
HIGHESTGAF VARCHAR(7)  NULL,
RULEOUTAXISIPRIMARY INT  NULL,
RULEOUTAXISISECONDARY INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
GENERIC1 VARCHAR(50)  NULL,
AXISIITERTIARY INT  NULL,
AXISIIQUATERNARY INT  NULL,
AXISIIITERTIARY INT  NULL,
AXISIIIQUATERNARY INT  NULL,
RULEOUTAXIS1TERTIARY INT  NULL,
RULEOUTAXIS1QUATERNARY INT  NULL,
RULEOUTAXISIITERTIARY INT  NULL,
RULEOUTAXISIIQUATERNARY INT  NULL,
RULEOUTAXISIIITERTIARY INT  NULL,
RULEOUTAXISIIIQUATERNARY INT  NULL,
AppType VARCHAR(5)  NULL,
EnrollID INT  NULL,
UserStamp INT  NOT NULL,
OpenID INT  NULL,
ParentEntity VARCHAR(256)  NULL,
AXISIPRIMARY INT  NULL,
AXISISECONDARY INT  NULL,
AXISITERTIARY INT  NULL,
AXISIQUATERNARY INT  NULL,
PrimaryDiagnosis INT  NULL,
PrimaryPointer INT  NULL,
ICDType INT  NULL,
AxisIPrimaryOnsetDate DATETIME  NULL,
AxisIIPrimaryOnsetDate DATETIME  NULL,
AxisIIIPrimaryOnsetDate DATETIME  NULL,
AxisISecondaryOnsetDate DATETIME  NULL,
AxisIISecondaryOnsetDate DATETIME  NULL,
AxisIIISecondaryOnsetDate DATETIME  NULL,
AxisITertiaryOnsetDate DATETIME  NULL,
AxisIITertiaryOnsetDate DATETIME  NULL,
AxisIIITertiaryOnsetDate DATETIME  NULL,
AxisIQuartenaryOnsetDate DATETIME  NULL,
AxisIIQuartenaryOnsetDate DATETIME  NULL,
AxisIIIQuartenaryOnsetDate DATETIME  NULL,
Generic2 INT  NULL,
Generic3 VARCHAR(MAX)  NULL,
Generic4 VARCHAR(MAX)  NULL,
Constraint PK_DIAGREVIEWID_DIAGREVIEW PRIMARY KEY CLUSTERED (DIAGREVIEWID)
);

CREATE TABLE DistributionGroup (
DistributionGroupId INT IDENTITY(1,1) NOT NULL,
GroupName VARCHAR(500)  NULL,
GroupType VARCHAR(50)  NULL,
DateTimeStamp DATETIME  NULL,
CreatedOn DATETIME  NULL,
CreatedBy INT  NULL,
UserStamp INT  NULL,
Active BIT  NULL,
Constraint PK_DistributionGroupId_DistributionGroup PRIMARY KEY CLUSTERED (DistributionGroupId)
);

CREATE TABLE DistributionGroupFilter (
DistributionGroupFilterId INT IDENTITY(1,1) NOT NULL,
DistributionGroupId INT  NULL,
FilterName VARCHAR(500)  NULL,
DateTimeStamp DATETIME  NULL,
CreatedOn DATETIME  NULL,
CreatedBy INT  NULL,
UserStamp INT  NULL,
Constraint PK_DistributionGroupFilterId_DistributionGroupFilter PRIMARY KEY CLUSTERED (DistributionGroupFilterId)
);

CREATE TABLE DistributionGroupFilterDetail (
DistributionGroupFilterDetailId INT IDENTITY(1,1) NOT NULL,
DistributionGroupFilterId INT  NULL,
FieldName VARCHAR(500)  NULL,
FieldValue VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NULL,
CreatedOn DATETIME  NULL,
CreatedBy INT  NULL,
UserStamp INT  NULL,
Constraint PK_DistributionGroupFilterDetailId_DistributionGroupFilterDetail PRIMARY KEY CLUSTERED (DistributionGroupFilterDetailId)
);

CREATE TABLE DocumentManagement (
DocumentManagementID INT IDENTITY(1,1) NOT NULL,
ExternalDocumentID VARCHAR(100)  NULL,
DocumentName VARCHAR(100)  NULL,
DocumentDate DATETIME  NULL,
DocumentWorker INT  NULL,
DocumentType VARCHAR(100)  NULL,
DocumentCategory VARCHAR(100)  NULL,
DocumentDescription VARCHAR(255)  NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
UserStamp INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
DocumentStatus VARCHAR(100)  NULL,
DocumentFileName VARCHAR(300)  NULL,
ContainerName VARCHAR(100)  NULL,
DownLoadLink VARCHAR(2000)  NULL,
Constraint PK_DocumentManagementID_DocumentManagement PRIMARY KEY CLUSTERED (DocumentManagementID)
);

CREATE TABLE DuplicatePackageServices (
DuplicatePackageServicesID INT IDENTITY(1,1) NOT NULL,
LookupCodesMastID INT  NULL,
VendorID INT  NULL,
ServiceID INT  NULL,
ServiceCodeUnitCostID INT  NULL,
DuplicateType INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_DuplicatePackageServicesID_DuplicatePackageServices PRIMARY KEY CLUSTERED (DuplicatePackageServicesID)
);

CREATE TABLE ELIGCRITERIA (
FCELID NUMERIC(10,0)  NOT NULL,
RULEDESC VARCHAR(1000)  NULL,
RULENAME VARCHAR(50)  NULL,
FUNDCODE VARCHAR(25)  NULL,
ACTIVEYN INT  NULL,
MEMBERID NUMERIC(10,0)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL
);

CREATE TABLE ELIGDETERMINED (
ELIGDETID NUMERIC(10,0)  NOT NULL,
ELDATE DATETIME  NULL,
CASENO NUMERIC(10,0)  NULL,
FUNDCODE VARCHAR(25)  NULL,
ELRULE INT  NULL,
DETERMINATION VARCHAR(10)  NULL,
DATETIMESTAMP DATETIME  NULL,
USERSTAMP VARCHAR(10)  NULL
);

CREATE TABLE ELIGIBILITY (
ELIGID INT IDENTITY(1,1) NOT NULL,
STATUS VARCHAR(100)  NULL,
STARTDATE DATETIME  NOT NULL,
ENDDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
EligibilitySource VARCHAR(15)  NULL,
EligibilityType VARCHAR(50)  NULL,
Area VARCHAR(100)  NULL,
CurrentID VARCHAR(15)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericText3 VARCHAR(100)  NULL,
PayerCode VARCHAR(3)  NULL,
GenericDate1 DATETIME  NULL,
UserStamp INT  NOT NULL,
InsuranceID INT  NOT NULL,
COPAY NUMERIC(19,4)  NULL,
ISComboCodeID INT  NOT NULL,
GenericText4 VARCHAR(100)  NULL,
Active BIT  NOT NULL,
SubscriberIdentifier VARCHAR(20)  NULL,
PriorSubscriberIdentifier VARCHAR(20)  NULL,
GenericText5 VARCHAR(100)  NULL,
GenericText6 VARCHAR(300)  NULL,
Amount NUMERIC(19,4)  NULL,
MedicaidRedeterminationDateAlternate DATETIME  NULL,
Verified VARCHAR(250)  NULL,
Constraint PK_ELIGID_ELIGIBILITY PRIMARY KEY CLUSTERED (ELIGID)
);

CREATE TABLE EligibilityStaging (
ID INT IDENTITY(1,1) NOT NULL,
SSN VARCHAR(11)  NULL,
DOB DATETIME  NULL,
STATUS VARCHAR(100)  NULL,
DATERANGEIDENTIFIER VARCHAR(4)  NULL,
DATERANGE VARCHAR(20)  NULL,
APPTYPE VARCHAR(5)  NULL,
CLIENTMEDICAIDID VARCHAR(20)  NULL,
NEWMEDICAIDID VARCHAR(20)  NULL,
INSURANCETYPECODE VARCHAR(10)  NULL,
SERVICETYPECODE VARCHAR(100)  NULL,
ACTIVE BIT  NULL,
PLANCOVDESC VARCHAR(50)  NULL,
STARTDATE VARCHAR(8)  NULL,
ENDDATE VARCHAR(8)  NULL,
STARTDATEMONTH VARCHAR(2)  NULL,
ENDDATEDAY VARCHAR(2)  NULL,
UserStamp INT  NULL,
CoverageLevel VARCHAR(5)  NULL,
PayerName VARCHAR(70)  NULL,
PayerQualifier VARCHAR(2)  NULL,
PayerID VARCHAR(80)  NULL,
PayerStreet VARCHAR(55)  NULL,
PayerCity VARCHAR(30)  NULL,
PayerState VARCHAR(2)  NULL,
PayerZip VARCHAR(15)  NULL,
GroupOrPolicyNumber VARCHAR(50)  NULL,
MemberIDNumber VARCHAR(50)  NULL,
MSG01 VARCHAR(300)  NULL,
Gender VARCHAR(10)  NULL,
LastName VARCHAR(60)  NULL,
TraceTypeCode VARCHAR(10)  NULL,
ReferenceIdentification VARCHAR(60)  NULL,
OriginatingCompanyIdentifier VARCHAR(60)  NULL,
Constraint PK_ID_EligibilityStaging PRIMARY KEY CLUSTERED (ID)
);

CREATE TABLE ENCOUNTERS (
EncID NUMERIC(10,0)  NOT NULL,
PContractNo VARCHAR(100)  NULL,
lstnam VARCHAR(40)  NULL,
fstnam VARCHAR(30)  NULL,
midnam VARCHAR(2)  NULL,
socsec VARCHAR(24)  NULL,
dob VARCHAR(510)  NULL,
sexcod VARCHAR(2)  NULL,
FamilyID VARCHAR(100)  NULL,
servdate DATETIME  NULL,
Vendorid INT  NULL,
location VARCHAR(100)  NULL,
VserviceID INT  NULL,
CPT1 VARCHAR(20)  NULL,
Modifier VARCHAR(2)  NULL,
BillingDiagnosis VARCHAR(20)  NULL,
pdate DATETIME  NULL,
puser VARCHAR(100)  NULL,
WorkerID INT  NULL,
ProvNo VARCHAR(50)  NULL,
Rate NUMERIC(18,2)  NULL,
NumberOfSessions VARCHAR(10)  NULL,
TransactionCode VARCHAR(2)  NULL,
CarrierCode VARCHAR(4)  NULL,
RegionCode VARCHAR(2)  NULL,
MunicipalityResidence VARCHAR(8)  NULL,
MunicipalityOfService VARCHAR(510)  NULL,
HOHSocialSecurity VARCHAR(24)  NULL,
ASESMemberSuffix VARCHAR(4)  NULL,
PatientAge VARCHAR(100)  NULL,
DailyDoses VARCHAR(510)  NULL,
PrescriptionDays VARCHAR(10)  NULL,
ClaimType VARCHAR(2)  NULL,
InOutPatient VARCHAR(2)  NULL,
PrimaryCenter VARCHAR(20)  NULL,
ServiceCenter VARCHAR(20)  NULL,
ContractType VARCHAR(4)  NULL,
PlaceOfService VARCHAR(510)  NULL,
PrimaryProviderLicense VARCHAR(20)  NULL,
ProviderProviderSpecialty VARCHAR(6)  NULL,
ServiceProviderLicense VARCHAR(20)  NULL,
ServiceProviderSpecialty VARCHAR(6)  NULL,
HICCode VARCHAR(24)  NULL,
ReferringProviderLicense VARCHAR(20)  NULL,
Deductible VARCHAR(18)  NULL,
CoPay VARCHAR(18)  NULL,
PatientName VARCHAR(68)  NULL,
ASESFamilyID VARCHAR(22)  NULL,
ProviderNumber VARCHAR(18)  NULL,
AccidentDate DATETIME  NULL,
PaymentDate DATETIME  NULL,
ServiceToDate DATETIME  NULL,
ServiceFromDate DATETIME  NULL,
EncounterOrFee VARCHAR(2)  NULL,
ServiceType VARCHAR(2)  NULL,
CaseType VARCHAR(2)  NULL,
ReasonCode VARCHAR(2)  NULL,
COBCode VARCHAR(2)  NULL,
DrugstoreDispense VARCHAR(18)  NULL,
NetPayment VARCHAR(18)  NULL,
CaseCode VARCHAR(2)  NULL,
AxisIISecondary VARCHAR(20)  NULL,
AxisISecondary VARCHAR(20)  NULL,
AxisIIPrimary VARCHAR(20)  NULL,
ServiceCode VARCHAR(12)  NULL,
ProcCode VARCHAR(10)  NULL,
SvcDegree VARCHAR(10)  NULL,
UnitCost NUMERIC(18,2)  NULL,
ServiceID NUMERIC(18,0)  NULL,
LiceNo VARCHAR(10)  NULL,
Specialty VARCHAR(50)  NULL,
DateTimeStamp DATETIME  NULL,
ExportUser VARCHAR(50)  NULL,
ExportDate DATETIME  NULL,
ExportID NUMERIC(18,0)  NULL,
mpi VARCHAR(13)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE EnrollFacilities (
ENFACID INT IDENTITY(1,1) NOT NULL,
ENROLLID INT  NOT NULL,
FACILITYID INT  NOT NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
COMMENTS VARCHAR(MAX)  NULL,
STATUS VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Disposition VARCHAR(100)  NULL,
DispositionDate DATETIME  NULL,
Constraint PK_ENFACID_EnrollFacilities PRIMARY KEY CLUSTERED (ENFACID)
);

CREATE TABLE EnrollFacilityBed (
ENROLLFACILITYBEDID INT IDENTITY(1,1) NOT NULL,
BEDID INT  NOT NULL,
ENROLLFACID INT  NOT NULL,
ANTICASSIGNDATE DATETIME  NULL,
BEDNUMBER VARCHAR(100)  NOT NULL,
ASSIGNDATE DATETIME  NULL,
ANTICVACDATE DATETIME  NULL,
VACANCYDATE DATETIME  NULL,
COMMENTS VARCHAR(2000)  NULL,
GENERICDROPDOWN1 VARCHAR(100)  NULL,
GENERICDROPDOWN2 VARCHAR(100)  NULL,
ACTIVE BIT  NOT NULL,
USERSTAMP INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
Room VARCHAR(500)  NULL,
OnHold BIT  NOT NULL,
BedHoldStartDate DATETIME  NULL,
BedHoldStartTime DATETIME  NULL,
BedHoldEndDate DATETIME  NULL,
BedHoldEndTime DATETIME  NULL,
BedHoldComment VARCHAR(2000)  NULL,
VacancyTime DATETIME  NULL,
Constraint PK_ENROLLFACILITYBEDID_EnrollFacilityBed PRIMARY KEY CLUSTERED (ENROLLFACILITYBEDID)
);

CREATE TABLE EnrollGroup (
EnrollGroupID INT IDENTITY(1,1) NOT NULL,
EnrollID INT  NOT NULL,
VendorGroupID INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_EnrollGroupID_EnrollGroup PRIMARY KEY CLUSTERED (EnrollGroupID)
);

CREATE TABLE ENROLLMENTS (
ENROLLID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
ADMITDATE DATETIME  NULL,
ENROLLTYPE VARCHAR(100)  NULL,
DISCHARGEDATE DATETIME  NULL,
EXPECTEDDISCHDATE DATETIME  NULL,
REASON1 VARCHAR(100)  NULL,
REASON2 VARCHAR(100)  NULL,
REASON3 VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
EDISPOSITION VARCHAR(100)  NOT NULL,
DISCHREFERRAL VARCHAR(100)  NULL,
DISCHTYPE VARCHAR(100)  NULL,
ENROLLTIME DATETIME  NULL,
DISCHCODE1 VARCHAR(100)  NULL,
DISCHCODE2 VARCHAR(100)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DISCHHOUSING VARCHAR(100)  NULL,
FOLLOWUP BIT  NULL,
DISCHTIME DATETIME  NULL,
OUTCOME VARCHAR(MAX)  NULL,
DISCHARGETO VARCHAR(100)  NULL,
FACILITYID INT  NULL,
LAPRIOR VARCHAR(100)  NULL,
LAUPON VARCHAR(100)  NULL,
DISCHARGED VARCHAR(200)  NULL,
REFERREDBY INT  NULL,
REFDATE DATETIME  NULL,
WAITDATELIST DATETIME  NULL,
TICKTRIGGER VARCHAR(50)  NULL,
DISPOSITIONDATE DATETIME  NULL,
GENERIC1 VARCHAR(2000)  NULL,
GENERIC2 VARCHAR(2000)  NULL,
APPTYPE VARCHAR(5)  NULL,
OPENCLOSEID INT  NOT NULL,
RiskLevel VARCHAR(100)  NULL,
RiskChange VARCHAR(100)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
EnrollmentDropDown3 VARCHAR(100)  NULL,
EnrollmentDropDown4 VARCHAR(100)  NULL,
GenericDate DATETIME  NULL,
Priority INT  NULL,
ProgramRedeterminationDate DATETIME  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
DateOfEligibilityDetermination DATETIME  NULL,
EligibilityDeterminationExtension DATETIME  NULL,
MonthlyPublicSupportAtApplication VARCHAR(MAX)  NULL,
MedicalInsuranceCoverageAtApplication VARCHAR(MAX)  NULL,
ReferralSource VARCHAR(100)  NULL,
TypeOfExit VARCHAR(100)  NULL,
ReasonForProgramExit VARCHAR(100)  NULL,
EmploymentOutcomeAtExit VARCHAR(100)  NULL,
PrimaryOccupationAtExit NUMERIC(6,0)  NULL,
HourlyWageAtExit NUMERIC(19,2)  NULL,
HoursWorkedInaWeekAtExit NUMERIC(2,0)  NULL,
MonthlyPublicSupportAtExit VARCHAR(MAX)  NULL,
MedicalInsuranceCoverageAtExit VARCHAR(MAX)  NULL,
StudentWithADisability VARCHAR(300)  NULL,
IndividualWithADisability VARCHAR(300)  NULL,
PrimaryDisabilityType VARCHAR(300)  NULL,
PrimaryDisabilitySource VARCHAR(300)  NULL,
SecondaryDisabilityType VARCHAR(300)  NULL,
SecondaryDisabilitySource VARCHAR(300)  NULL,
SignificanceOfDisability VARCHAR(300)  NULL,
StartDateOfPreETS DATETIME  NULL,
EligibilityStatus VARCHAR(300)  NULL,
Constraint PK_ENROLLID_ENROLLMENTS PRIMARY KEY CLUSTERED (ENROLLID)
);

CREATE TABLE ENROLLWORKERS (
ENROLLWORKID INT IDENTITY(1,1) NOT NULL,
MEMBERID INT  NOT NULL,
ENROLLID INT  NOT NULL,
STARTDATE DATETIME  NOT NULL,
ENDDATE DATETIME  NULL,
PRIMWORK INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ACTIVE INT  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericNumeric1 NUMERIC(19,4)  NULL,
GenericCurrency1 VARCHAR(8)  NULL,
Comments VARCHAR(MAX)  NULL,
GenericDropdown2 VARCHAR(100)  NULL,
Constraint PK_ENROLLWORKID_ENROLLWORKERS PRIMARY KEY CLUSTERED (ENROLLWORKID)
);

CREATE TABLE EventService (
EventServiceID INT IDENTITY(1,1) NOT NULL,
EventName VARCHAR(255)  NOT NULL,
FunctionName VARCHAR(255)  NOT NULL,
IsClientSide BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_EventServiceID_EventService PRIMARY KEY CLUSTERED (EventServiceID)
);

CREATE TABLE EventServiceParameter (
EventServiceParameterID INT IDENTITY(1,1) NOT NULL,
EventServiceID INT  NULL,
FieldControlID INT  NULL,
ParameterName VARCHAR(50)  NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_EventServiceParameterID_EventServiceParameter PRIMARY KEY CLUSTERED (EventServiceParameterID)
);

CREATE TABLE EventTracking (
Type VARCHAR(50)  NULL,
Event VARCHAR(50)  NULL,
Viewed VARCHAR(100)  NULL,
Description VARCHAR(MAX)  NULL,
DocID NUMERIC(10,0)  NULL,
ID NUMERIC(10,0)  NULL,
MemberID NUMERIC(10,0)  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Tab VARCHAR(100)  NULL,
EventLogID INT IDENTITY(1,1) NOT NULL,
HarmonyEntityType VARCHAR(50)  NULL,
HarmonyEntityIDOld INT  NULL,
HarmonyEntityIDNew INT  NULL,
RawData VARCHAR(MAX)  NULL,
PageID INT  NULL,
BrowserInfo VARCHAR(500)  NULL,
RoleID INT  NULL,
Constraint PK_EventLogID_EventTracking PRIMARY KEY CLUSTERED (EventLogID)
);

CREATE TABLE EVVAuthServiceWorkers (
EVVAuthServiceWorkersID INT IDENTITY(1,1) NOT NULL,
MemberID INT  NULL,
AuthServiceID INT  NOT NULL,
WorkerType VARCHAR(50)  NOT NULL,
WorkerStartDate DATETIME  NULL,
WorkerEndDate DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_EVVAuthServiceWorkersID_EVVAuthServiceWorkers PRIMARY KEY CLUSTERED (EVVAuthServiceWorkersID)
);

CREATE TABLE EVVDataSyncConfig (
EVVDataSyncConfigID INT IDENTITY(1,1) NOT NULL,
ConsumerAddressType VARCHAR(MAX)  NULL,
ConsumerAddressCategory VARCHAR(MAX)  NULL,
ConsumerAddressOnlyPrimary BIT  NULL,
ConsumerAddressOnlyActive BIT  NULL,
ConsumerAddressOnlyValid BIT  NULL,
ConsumerRelationship VARCHAR(MAX)  NULL,
ConsumerMultiRelationships VARCHAR(MAX)  NULL,
ConsumerRelationOnlyActive BIT  NULL,
ConsumerRelationAddressOnlyValid BIT  NULL,
VisibleConsumers VARCHAR(200)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AuthServiceStatus VARCHAR(MAX)  NULL,
AuthServiceEDIStatus VARCHAR(MAX)  NULL,
Constraint PK_EVVDataSyncConfigID_EVVDataSyncConfig PRIMARY KEY CLUSTERED (EVVDataSyncConfigID)
);

CREATE TABLE EVVDeliveryDetail (
EVVDeliveryDetailID INT IDENTITY(1,1) NOT NULL,
ActivityID INT  NOT NULL,
StatedAddress VARCHAR(500)  NULL,
StatedLatLong VARCHAR(50)  NULL,
AllowableDiff INT  NULL,
StartAddress VARCHAR(500)  NULL,
StartLatLong VARCHAR(50)  NULL,
StartDiff INT  NULL,
EndAddress VARCHAR(500)  NULL,
EndLatLong VARCHAR(50)  NULL,
EndDiff INT  NULL,
Notes VARCHAR(MAX)  NULL,
Signature VARCHAR(MAX)  NULL,
Photo VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AutoEnded BIT  NULL,
IsGeolocationAvaliable BIT  NULL,
StartAccuracy VARCHAR(8)  NULL,
EndAccuracy VARCHAR(8)  NULL,
IsStatedAddressValid BIT  NULL,
UserName VARCHAR(100)  NULL,
UserAgent VARCHAR(500)  NULL,
Constraint PK_EVVDeliveryDetailID_EVVDeliveryDetail PRIMARY KEY CLUSTERED (EVVDeliveryDetailID)
);

CREATE TABLE EVVMobileAppConfig (
EVVMobileAppConfigID INT IDENTITY(1,1) NOT NULL,
ApplicationName VARCHAR(50)  NULL,
Logo VARCHAR(MAX)  NULL,
LogoFileName VARCHAR(100)  NULL,
LogoContentType VARCHAR(50)  NULL,
LogoFileSize INT  NULL,
Consumers VARCHAR(50)  NULL,
DeliveryRosters VARCHAR(50)  NULL,
CurrentDeliveries VARCHAR(50)  NULL,
ShowCaseNo BIT  NULL,
LabelCaseNo VARCHAR(50)  NULL,
ShowGender BIT  NULL,
LabelGender VARCHAR(50)  NULL,
ShowAge BIT  NULL,
LabelAge VARCHAR(50)  NULL,
ShowRace BIT  NULL,
LabelRace VARCHAR(50)  NULL,
ShowPrimaryLanguage BIT  NULL,
LabelPrimaryLanguage VARCHAR(50)  NULL,
ShowHomePhone BIT  NULL,
LabelHomePhone VARCHAR(50)  NULL,
ShowMobilePhone BIT  NULL,
LabelMobilePhone VARCHAR(50)  NULL,
ShowPrimaryAddress BIT  NULL,
LabelPrimaryAddress VARCHAR(50)  NULL,
ShowWorkers BIT  NULL,
LabelWorkers VARCHAR(50)  NULL,
ShowWorkerName BIT  NULL,
LabelWorkerName VARCHAR(50)  NULL,
ShowWorkerPhone BIT  NULL,
LabelWorkerPhone VARCHAR(50)  NULL,
ShowWorkerEmail BIT  NULL,
LabelWorkerEmail VARCHAR(50)  NULL,
ShowPhoto BIT  NULL,
LabelPhoto VARCHAR(50)  NULL,
ShowSpecialNotes BIT  NULL,
LabelSpecialNotes VARCHAR(50)  NULL,
SpecialNotesPromptText VARCHAR(2000)  NULL,
ShowApprovedDeliveryLocations BIT  NULL,
LabelApprovedDeliveryLocations VARCHAR(50)  NULL,
ShowApprovedServices BIT  NULL,
LabelApprovedServices VARCHAR(50)  NULL,
ShowCurrentDeliveries BIT  NULL,
ServiceDeliveryNotesPromptText VARCHAR(2000)  NULL,
ShowDeliveryConfirmationSignature BIT  NULL,
ShowDeliveryConfirmationPhoto BIT  NULL,
AutoendServiceDeliveryTime NUMERIC(10,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ShowWorkerMobilePhone BIT  NULL,
LabelWorkerMobilePhone VARCHAR(50)  NULL,
ShowContactType BIT  NULL,
ContactTypeResponses VARCHAR(10)  NULL,
LabelContactType VARCHAR(50)  NULL,
UploadedDeliveries VARCHAR(50)  NULL,
ShowUploadedDeliveries BIT  NULL,
NotesUpdateExpirationDays INT  NULL,
Constraint PK_EVVMobileAppConfigID_EVVMobileAppConfig PRIMARY KEY CLUSTERED (EVVMobileAppConfigID)
);

CREATE TABLE EVVViolation (
EVVViolationID INT IDENTITY(1,1) NOT NULL,
ActivityID INT  NOT NULL,
Type VARCHAR(100)  NULL,
SubType VARCHAR(100)  NULL,
Description VARCHAR(2000)  NULL,
Status VARCHAR(100)  NULL,
ViolationReason VARCHAR(100)  NULL,
ViolationComments VARCHAR(2000)  NULL,
ExemptionGranted BIT  NULL,
ExemptionReason VARCHAR(100)  NULL,
ExemptionComments VARCHAR(2000)  NULL,
GrantedBy INT  NULL,
GrantedOnDate DATETIME  NULL,
GrantedOnTime DATETIME  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_EVVViolationID_EVVViolation PRIMARY KEY CLUSTERED (EVVViolationID)
);

CREATE TABLE Exception (
ExceptionID VARCHAR(16)  NOT NULL,
Message VARCHAR(3000)  NOT NULL,
UserID INT  NULL,
MemberID INT  NULL,
UserName VARCHAR(300)  NULL,
StackTrace VARCHAR(3000)  NULL,
ExceptionDate DATETIME  NOT NULL
);

CREATE TABLE Export270 (
ExportID INT IDENTITY(1,1) NOT NULL,
Document VARCHAR(7000)  NULL,
SSN VARCHAR(11)  NULL,
DOB DATETIME  NULL,
SecID VARCHAR(100)  NULL,
Constraint PK_ExportID_Export270 PRIMARY KEY CLUSTERED (ExportID)
);

CREATE TABLE ExportReport (
Id INT IDENTITY(1,1) NOT NULL,
Component VARCHAR(300)  NOT NULL,
AclRefNumber VARCHAR(100)  NOT NULL,
Resource VARCHAR(1000)  NOT NULL,
Field VARCHAR(300)  NOT NULL,
SectionName VARCHAR(MAX)  NOT NULL,
FieldLabel VARCHAR(1000)  NOT NULL,
Sort INT  NULL,
Active BIT  NULL,
ReportType VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_Id_ExportReport PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE EXTDEMOGRAPHICS (
CASENO NUMERIC(10,0)  NOT NULL,
FIRSTNAME VARCHAR(30)  NULL,
LASTNAME VARCHAR(30)  NULL,
MIDDLENAME VARCHAR(30)  NULL,
ALIAS VARCHAR(100)  NULL,
DOB DATETIME  NULL,
SSN VARCHAR(11)  NULL,
STATUS VARCHAR(100)  NULL,
STREET VARCHAR(100)  NULL,
CITY VARCHAR(30)  NULL,
STATE VARCHAR(100)  NULL,
ZIPCODE VARCHAR(10)  NULL,
PHONE VARCHAR(16)  NULL,
RESIDENCETYPE VARCHAR(50)  NULL,
CENSUSTRACT VARCHAR(7)  NULL,
FUNDCODE VARCHAR(25)  NULL,
DISTRICT VARCHAR(25)  NULL,
GENDER VARCHAR(100)  NULL,
RACE VARCHAR(50)  NULL,
HISPORIGIN INT  NULL,
SECID VARCHAR(15)  NULL,
TERID VARCHAR(20)  NULL,
FAMILYID VARCHAR(20)  NULL,
RELEASESIGNED NUMERIC(10,0)  NULL,
MEMBERID NUMERIC(10,0)  NULL,
ANNUALINCOME NUMERIC(19,4)  NULL,
MAXANNUALAMOUNT NUMERIC(19,4)  NULL,
INCOMERANGEID INT  NULL,
MEETCRITERIA INT  NULL,
CURRENTTEAM VARCHAR(15)  NULL,
CURRENTMANDATEDSTATUS VARCHAR(30)  NULL,
CURRENTIVESTATUS VARCHAR(25)  NULL,
CURRENTIEPCATEGORY VARCHAR(30)  NULL,
COPAY NUMERIC(19,4)  NULL,
REFERRALSOURCE VARCHAR(50)  NULL,
DATETIMESTAMP DATETIME  NULL,
AGE VARCHAR(8)  NULL,
AGEGROUP VARCHAR(30)  NULL,
LEVELOFNEED INT  NULL,
DSSSPECIALWELFARE INT  NULL,
LASTFAPTDATE DATETIME  NULL,
NEXTFAPTDATE DATETIME  NULL,
MOSTRECENTASSESSMENTSCORE NUMERIC(10,0)  NULL,
MOSTRECENTASSESSMENTDATE DATETIME  NULL,
FIPSCODE VARCHAR(3)  NULL,
FAMILYSIZE INT  NULL,
DUPID NUMERIC(10,0)  NULL,
STREET2 VARCHAR(100)  NULL,
PAYEENAME VARCHAR(50)  NULL,
CAT1 NUMERIC(10,0)  NULL,
CAT2 NUMERIC(10,0)  NULL,
CAT3 NUMERIC(10,0)  NULL,
ALIENID VARCHAR(10)  NULL,
COUNTRYORIGIN VARCHAR(20)  NULL,
REFDATE DATETIME  NULL,
BIRTHPLACE VARCHAR(20)  NULL,
BIRTHCERTIFICATE VARCHAR(20)  NULL,
RELIGION VARCHAR(50)  NULL,
SPIRITUALORIENTATION VARCHAR(20)  NULL,
HAIRCOLOR VARCHAR(50)  NULL,
EYECOLOR VARCHAR(50)  NULL,
WEIGHT VARCHAR(10)  NULL,
HEIGHT VARCHAR(10)  NULL,
IDENTIFYINGMARKS VARCHAR(255)  NULL,
ADDRESSTYPE VARCHAR(50)  NULL,
PLANGUAGE VARCHAR(50)  NULL,
SLANGUAGE VARCHAR(50)  NULL,
CONSUMERPICTURE VARCHAR(200)  NULL,
LOCATIONPHYSRECORDS VARCHAR(50)  NULL,
WORKPHONE VARCHAR(16)  NULL,
CELLPHONE VARCHAR(16)  NULL,
PAGER VARCHAR(16)  NULL,
MESSAGEPHONE VARCHAR(16)  NULL,
RESCOUNTY VARCHAR(100)  NULL,
PAYCOUNTY VARCHAR(100)  NULL,
LEGALCOUNTY VARCHAR(100)  NULL,
CITIZENSHIP VARCHAR(100)  NULL,
LENRESIDENCY VARCHAR(10)  NULL,
CHURCHMEMBER INT  NULL,
CHURCH VARCHAR(50)  NULL,
EMAIL VARCHAR(50)  NULL,
GEN1 VARCHAR(25)  NULL,
GEN2 VARCHAR(25)  NULL,
GEN3 VARCHAR(50)  NULL,
GEN4 VARCHAR(50)  NULL,
GEN5 VARCHAR(50)  NULL,
COUNTRY VARCHAR(25)  NULL,
CURMARSTATUS VARCHAR(50)  NULL,
PURGEDATE DATETIME  NULL,
HOMEPHONE2 VARCHAR(16)  NULL,
INDEXCODE VARCHAR(10)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
TYPE VARCHAR(30)  NULL,
SALUTATION VARCHAR(25)  NULL,
RecordSource VARCHAR(10)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE EXTELIGIBILITY (
EXTELIGID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
HARMONYCASENO NUMERIC(10,0)  NULL,
SOURCEID VARCHAR(50)  NULL,
BILLINGAGENTID VARCHAR(50)  NULL,
CARRIERID VARCHAR(50)  NULL,
MBHOCARRIERID VARCHAR(50)  NULL,
MEMBERGROUP VARCHAR(50)  NULL,
GROUPREGION VARCHAR(50)  NULL,
GROUPMUNICIPALITY VARCHAR(50)  NULL,
MEMBERID VARCHAR(50)  NULL,
MEMBERCONTRACTNUMBER VARCHAR(50)  NULL,
DEPENDENTCODE VARCHAR(50)  NULL,
MEMBERIDCOUNTER VARCHAR(50)  NULL,
FAMILYIDENTIFIER VARCHAR(25)  NULL,
FAMILYID VARCHAR(20)  NULL,
FAMILYIDSUFFIX VARCHAR(8)  NULL,
COUNTYCODE VARCHAR(100)  NULL,
PAYMENTDATE VARCHAR(6)  NULL,
PAYMENTMONTH VARCHAR(50)  NULL,
PAYMENTFROMDATE VARCHAR(50)  NULL,
PAYMENTTHRUDATE VARCHAR(50)  NULL,
MEMBERPLAN VARCHAR(50)  NULL,
PLANEFFECTIVEDATE VARCHAR(50)  NULL,
PRIMARYCENTER VARCHAR(50)  NULL,
PCPID VARCHAR(50)  NULL,
PCPLICENSENUMBER VARCHAR(50)  NULL,
MEDICARE VARCHAR(50)  NULL,
ELIGIBILITYTYPE VARCHAR(50)  NULL,
SCOPECODE VARCHAR(50)  NULL,
DDELIGIBLE INT  NULL,
MHELIGIBLE INT  NULL,
SAELIGIBLE INT  NULL,
RECIPIENTLEVELOFCARE VARCHAR(50)  NULL,
LOCPROVIDERID VARCHAR(50)  NULL,
OTHERINSURANCECODE VARCHAR(50)  NULL,
QHPID NUMERIC(10,0)  NULL,
MHELGDEGID NUMERIC(10,0)  NULL,
NEGATIONACTIONDATE VARCHAR(8)  NULL,
DOWNLOADDATE VARCHAR(7)  NULL,
DATETIMESTAMP DATETIME  NULL,
COPAY NUMERIC(19,4)  NULL,
DEDUCTIBLE NUMERIC(19,4)  NULL,
BATCHNO VARCHAR(50)  NULL,
RECORDUSE VARCHAR(50)  NULL,
CARRIERMEMBERID VARCHAR(25)  NULL,
LASTNAME VARCHAR(30)  NULL,
FIRSTNAME VARCHAR(30)  NULL,
HICN VARCHAR(12)  NULL,
MPI VARCHAR(13)  NULL,
PCPSpecialty VARCHAR(3)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
INDEXCODE VARCHAR(10)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_EXTELIGID_EXTELIGIBILITY PRIMARY KEY CLUSTERED (EXTELIGID)
);

CREATE TABLE ExternalDataStoreVendorsMapping (
ExternalDataStoreVendorsMappingID INT IDENTITY(1,1) NOT NULL,
HumanServiceVendorID INT  NOT NULL,
ExternalDataStoreID VARCHAR(200)  NOT NULL,
IsImportedFromDataStore BIT  NULL,
DateTimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_ExternalDataStoreVendorsMappingID_ExternalDataStoreVendorsMapping PRIMARY KEY CLUSTERED (ExternalDataStoreVendorsMappingID)
);

CREATE TABLE ExternalExportLookupMapping (
ExternalExportLookupMappingID INT IDENTITY(1,1) NOT NULL,
ExternalExportMappingID INT  NOT NULL,
LookupCodesMastID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ExternalExportLookupMappingID_ExternalExportLookupMapping PRIMARY KEY CLUSTERED (ExternalExportLookupMappingID)
);

CREATE TABLE ExternalExportMapping (
ExternalExportMappingID INT IDENTITY(1,1) NOT NULL,
ExportSource VARCHAR(100)  NOT NULL,
ExternalItemName VARCHAR(500)  NOT NULL,
ExternalItemValue VARCHAR(500)  NOT NULL,
ExternalMappingCode VARCHAR(10)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ExternalExportMappingID_ExternalExportMapping PRIMARY KEY CLUSTERED (ExternalExportMappingID)
);

CREATE TABLE FACILITIES (
FACILITYID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
FACILITY VARCHAR(50)  NOT NULL,
FACSTREET1 VARCHAR(100)  NULL,
FACSTREET2 VARCHAR(100)  NULL,
FACCITY VARCHAR(30)  NULL,
FACSTATE VARCHAR(100)  NULL,
FACZIP VARCHAR(10)  NULL,
FACPHONE VARCHAR(16)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
ACTIVE BIT  NOT NULL,
UserStamp INT  NOT NULL,
Capacity INT  NULL,
LevelOfCare VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
FacilityNo VARCHAR(50)  NULL,
Constraint PK_FACILITYID_FACILITIES PRIMARY KEY CLUSTERED (FACILITYID)
);

CREATE TABLE FHIRLog (
fhirlogid INT IDENTITY(1,1) NOT NULL,
fhirresourcetypeid INT  NOT NULL,
logstartdate DATETIME  NOT NULL,
logenddate DATETIME  NULL,
errordesc VARCHAR(MAX)  NULL,
Constraint PK_fhirlogid_FHIRLog PRIMARY KEY CLUSTERED (fhirlogid)
);

CREATE TABLE FHIRLogException (
fhirlogexceptionid INT IDENTITY(1,1) NOT NULL,
fhirlogid INT  NOT NULL,
logexceptiondate DATETIME  NOT NULL,
providerdbname VARCHAR(50)  NULL,
fhirprocedurename VARCHAR(250)  NULL,
errordesc VARCHAR(MAX)  NULL,
Constraint PK_fhirlogexceptionid_FHIRLogException PRIMARY KEY CLUSTERED (fhirlogexceptionid)
);

CREATE TABLE FHIRLogResource (
fhirresourcelogid INT IDENTITY(1,1) NOT NULL,
fhirlogid INT  NOT NULL,
fhirresourcetypeid INT  NOT NULL,
fhirresourceid INT  NOT NULL,
fhirresourceguid VARCHAR(5000)  NOT NULL,
logdate DATETIME  NOT NULL,
logcompleted BIT  NULL,
logerrormessage VARCHAR(MAX)  NULL,
fhirresourcelastupdatedt DATETIME  NULL,
Constraint PK_fhirresourcelogid_FHIRLogResource PRIMARY KEY CLUSTERED (fhirresourcelogid)
);

CREATE TABLE FieldControl (
FieldControlID INT IDENTITY(1,1) NOT NULL,
SectionID INT  NOT NULL,
FieldControlTypeID INT  NOT NULL,
Label VARCHAR(255)  NULL,
[Default] INT  NOT NULL,
SortBy INT  NOT NULL,
UserRequired BIT  NOT NULL,
Visible BIT  NOT NULL,
ReadOnly INT  NOT NULL,
ControlWidth INT  NULL,
ClientSideControlID VARCHAR(255)  NULL,
DBFieldName VARCHAR(255)  NOT NULL,
dType VARCHAR(255)  NULL,
UseInWFW BIT  NOT NULL,
ShowInGrid BIT  NOT NULL,
FetchSPName VARCHAR(255)  NULL,
OraclePackage VARCHAR(255)  NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SystemRequired BIT  NOT NULL,
IsWFWValidationField INT  NOT NULL,
APIIntegrationStatus BIT  NOT NULL,
Constraint PK_FieldControlID_FieldControl PRIMARY KEY CLUSTERED (FieldControlID)
);

CREATE TABLE FieldControlEventService (
FieldControlEventServiceID INT IDENTITY(1,1) NOT NULL,
FieldControlID INT  NOT NULL,
EventServiceID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_FieldControlEventServiceID_FieldControlEventService PRIMARY KEY CLUSTERED (FieldControlEventServiceID)
);

CREATE TABLE FieldControlPermission (
FieldControlPermissionID INT IDENTITY(1,1) NOT NULL,
FieldControlID INT  NOT NULL,
PermissionID INT  NOT NULL,
Visible BIT  NOT NULL,
ReadOnly INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_FieldControlPermissionID_FieldControlPermission PRIMARY KEY CLUSTERED (FieldControlPermissionID)
);

CREATE TABLE FieldControlProperty (
FieldControlPropertyID INT IDENTITY(1,1) NOT NULL,
FieldControlID INT  NOT NULL,
PropertyName VARCHAR(100)  NOT NULL,
PropertyValue VARCHAR(7000)  NOT NULL,
UseOnPostback BIT  NOT NULL,
UseReflection BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_FieldControlPropertyID_FieldControlProperty PRIMARY KEY CLUSTERED (FieldControlPropertyID)
);

CREATE TABLE FieldControlType (
FieldControlTypeID INT IDENTITY(1,1) NOT NULL,
Control VARCHAR(255)  NOT NULL,
Width INT  NULL,
Height INT  NULL,
SystemRequired BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_FieldControlTypeID_FieldControlType PRIMARY KEY CLUSTERED (FieldControlTypeID)
);

CREATE TABLE FilterSetting (
FilterSettingID INT IDENTITY(1,1) NOT NULL,
UserStamp INT  NOT NULL,
PageID INT  NOT NULL,
FilterName VARCHAR(255)  NOT NULL,
IsDefault BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_FilterSettingID_FilterSetting PRIMARY KEY CLUSTERED (FilterSettingID)
);

CREATE TABLE FilterSettingDetail (
FilterSettingDetailID INT IDENTITY(1,1) NOT NULL,
FilterSettingID INT  NOT NULL,
FieldControlID INT  NOT NULL,
FieldControlValue VARCHAR(128)  NOT NULL,
FilterCriteria VARCHAR(128)  NOT NULL,
Operator VARCHAR(50)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_FilterSettingDetailID_FilterSettingDetail PRIMARY KEY CLUSTERED (FilterSettingDetailID)
);

CREATE TABLE FINANCIALMENU (
MENUID INT  NULL,
ITEMNAME VARCHAR(75)  NULL,
ITEMLABEL VARCHAR(75)  NULL,
ITEMCATEGORY VARCHAR(75)  NULL,
ITEMSUBCATEGORY VARCHAR(75)  NULL,
ACTIVE NUMERIC(18,0)  NULL,
ITEMDESCRIPTION VARCHAR(MAX)  NULL,
ITEMHELP VARCHAR(MAX)  NULL,
[FUNCTION] VARCHAR(75)  NULL,
FinancialMenuID INT IDENTITY(1,1) NOT NULL,
Constraint PK_FinancialMenuID_FINANCIALMENU PRIMARY KEY CLUSTERED (FinancialMenuID)
);

CREATE TABLE FundCodeAuthMapping (
FundCodeAuthMappingID INT IDENTITY(1,1) NOT NULL,
SiteID INT  NOT NULL,
Active BIT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SendToEVV BIT  NOT NULL,
Constraint PK_FundCodeAuthMappingID_FundCodeAuthMapping PRIMARY KEY CLUSTERED (FundCodeAuthMappingID)
);

CREATE TABLE FundCodeAuthMappingStatuses (
FundCodeAuthMappingStatusesID INT IDENTITY(1,1) NOT NULL,
FundCodeAuthMappingID INT  NULL,
MappedStatusLeft VARCHAR(100)  NOT NULL,
MappedStatusRight VARCHAR(100)  NOT NULL,
MapType INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SessionID VARCHAR(100)  NULL,
IncludeForEVV BIT  NOT NULL,
RemoveForEVV BIT  NOT NULL,
SortOrder INT  NULL,
Constraint PK_FundCodeAuthMappingStatusesID_FundCodeAuthMappingStatuses PRIMARY KEY CLUSTERED (FundCodeAuthMappingStatusesID)
);

CREATE TABLE Goal (
GoalID INT IDENTITY(1,1) NOT NULL,
NeedID INT  NOT NULL,
GoalCodeID INT  NOT NULL,
GoalText VARCHAR(MAX)  NULL,
RevisionDate DATETIME  NULL,
CompletionDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
TargetDate DATETIME  NULL,
ScaleID INT  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(45)  NULL,
GenericText1 VARCHAR(255)  NULL,
GenericText2 VARCHAR(255)  NULL,
GenericText3 VARCHAR(255)  NULL,
GenericText4 VARCHAR(255)  NULL,
GenericMemo1 VARCHAR(MAX)  NULL,
GenericMemo2 VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Progress VARCHAR(100)  NULL,
FrequencyOfContact VARCHAR(100)  NULL,
Duration VARCHAR(100)  NULL,
Accepted BIT  NULL,
ResourcePlanned VARCHAR(100)  NULL,
ResourceUsed VARCHAR(100)  NULL,
Achieved VARCHAR(100)  NULL,
Constraint PK_GoalID_Goal PRIMARY KEY CLUSTERED (GoalID)
);

CREATE TABLE GoalCode (
GoalCodeID INT IDENTITY(1,1) NOT NULL,
Goal VARCHAR(MAX)  NULL,
RequiresNamePrefix BIT  NOT NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Constraint PK_GoalCodeID_GoalCode PRIMARY KEY CLUSTERED (GoalCodeID)
);

CREATE TABLE GoalCodeCategory (
GoalCodeCategoryID INT IDENTITY(1,1) NOT NULL,
GoalCodeID INT  NOT NULL,
Category VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_GoalCodeCategoryID_GoalCodeCategory PRIMARY KEY CLUSTERED (GoalCodeCategoryID)
);

CREATE TABLE [Group] (
GroupID INT IDENTITY(1,1) NOT NULL,
DerivedGroupID INT  NULL,
GroupName VARCHAR(300)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
AccessLevel INT  NOT NULL,
AllowCrossProgramAccess BIT  NOT NULL,
IsTemplate BIT  NOT NULL,
CSSFileName VARCHAR(255)  NULL,
IsHarmonyMainSecure BIT  NOT NULL,
ReportGroup VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
IsParent BIT  NOT NULL,
Constraint PK_GroupID_Group PRIMARY KEY CLUSTERED (GroupID)
);

CREATE TABLE GROUPDATES (
GROUPID NUMERIC(10,0)  NOT NULL,
MEETINGDATE DATETIME  NOT NULL
);

CREATE TABLE GROUPEES (
GROUPID NUMERIC(10,0)  NOT NULL,
VENDORID INT  NOT NULL,
GROUPNAME VARCHAR(50)  NULL,
SCHEDULE VARCHAR(50)  NULL,
VSERVICEID NUMERIC(10,0)  NULL,
STARTTIME DATETIME  NULL,
ENDTIME DATETIME  NULL,
LOCATION VARCHAR(50)  NULL,
MEMBERID NUMERIC(10,0)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
GROUPS VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NULL,
COMMENTS VARCHAR(MAX)  NULL,
ACTIVE INT  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE GroupFilter (
DistributionGroupFilterId INT IDENTITY(1,1) NOT NULL,
DistributionGroupId INT  NULL,
FilterName VARCHAR(500)  NULL,
DateTimeStamp DATETIME  NULL,
CreatedOn DATETIME  NULL,
CreatedBy INT  NULL,
UserStamp INT  NULL,
Constraint PK_DistributionGroupFilterId_GroupFilter PRIMARY KEY CLUSTERED (DistributionGroupFilterId)
);

CREATE TABLE GroupFilterDetail (
DistributionGroupFilterDetailId INT IDENTITY(1,1) NOT NULL,
DistributionGroupFilterId INT  NULL,
FieldName VARCHAR(500)  NULL,
FieldValue VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NULL,
CreatedOn DATETIME  NULL,
CreatedBy INT  NULL,
UserStamp INT  NULL,
Constraint PK_DistributionGroupFilterDetailId_GroupFilterDetail PRIMARY KEY CLUSTERED (DistributionGroupFilterDetailId)
);

CREATE TABLE GroupPackage (
GroupPackageID INT IDENTITY(1,1) NOT NULL,
PackageID INT  NOT NULL,
Apptype VARCHAR(5)  NOT NULL,
UserStamp VARCHAR(10)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
RoleID INT  NOT NULL,
Constraint PK_GroupPackageID_GroupPackage PRIMARY KEY CLUSTERED (GroupPackageID)
);

CREATE TABLE Groups (
GroupID NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
GroupName VARCHAR(64)  NOT NULL,
UserStamp VARCHAR(10)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_GroupID_Groups PRIMARY KEY CLUSTERED (GroupID)
);

CREATE TABLE GroupSeries (
GroupSeriesID INT IDENTITY(1,1) NOT NULL,
VendorGroupID INT  NOT NULL,
VServiceID INT  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
StartTime DATETIME  NOT NULL,
EndTime DATETIME  NOT NULL,
Location VARCHAR(100)  NULL,
MemberID INT  NOT NULL,
FacilityID INT  NULL,
ContactType VARCHAR(100)  NULL,
PlaceOfService VARCHAR(100)  NULL,
RecurrencePattern VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SessionNumber VARCHAR(3000)  NULL,
SessionWorker2 INT  NULL,
SessionWorker3 INT  NULL,
Comment2 VARCHAR(MAX)  NULL,
GenericMultiSelect VARCHAR(MAX)  NULL,
NumberAttendedSession INT  NULL,
Constraint PK_GroupSeriesID_GroupSeries PRIMARY KEY CLUSTERED (GroupSeriesID)
);

CREATE TABLE GroupSeriesException (
GroupSeriesExceptionID INT IDENTITY(1,1) NOT NULL,
GroupSeriesID INT  NOT NULL,
ExceptionDate DATETIME  NOT NULL,
VServiceID INT  NULL,
StartTime DATETIME  NOT NULL,
EndTime DATETIME  NOT NULL,
Location VARCHAR(100)  NULL,
MemberID INT  NOT NULL,
FacilityID INT  NULL,
ContactType VARCHAR(100)  NULL,
PlaceOfService VARCHAR(100)  NULL,
Deleted BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Action VARCHAR(100)  NOT NULL,
CancelReason VARCHAR(100)  NULL,
Cancelnote VARCHAR(MAX)  NULL,
SessionWorker2 INT  NULL,
SessionWorker3 INT  NULL,
Comment2 VARCHAR(MAX)  NULL,
GenericMultiSelect VARCHAR(MAX)  NULL,
NumberAttendedSession INT  NULL,
Constraint PK_GroupSeriesExceptionID_GroupSeriesException PRIMARY KEY CLUSTERED (GroupSeriesExceptionID)
);

CREATE TABLE GroupSeriesParticipant (
GroupSeriesParticipantID INT IDENTITY(1,1) NOT NULL,
GroupSeriesID INT  NOT NULL,
EnrollGroupID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_GroupSeriesParticipantID_GroupSeriesParticipant PRIMARY KEY CLUSTERED (GroupSeriesParticipantID)
);

CREATE TABLE GroupSeriesParticipantException (
GroupSeriesParticipantExceptionID INT IDENTITY(1,1) NOT NULL,
GroupSeriesParticipantID INT  NOT NULL,
ExceptionDate DATETIME  NOT NULL,
Remove BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_GroupSeriesParticipantExceptionID_GroupSeriesParticipantException PRIMARY KEY CLUSTERED (GroupSeriesParticipantExceptionID)
);

CREATE TABLE GroupSeriesWorker (
GroupSeriesWorkerID INT IDENTITY(1,1) NOT NULL,
GroupSeriesID INT  NOT NULL,
ProviderGroupWorkersID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Registered VARCHAR(100)  NULL,
MemberID INT  NOT NULL,
Constraint PK_GroupSeriesWorkerID_GroupSeriesWorker PRIMARY KEY CLUSTERED (GroupSeriesWorkerID)
);

CREATE TABLE GroupSeriesWorkerException (
GroupSeriesWorkerExceptionID INT IDENTITY(1,1) NOT NULL,
GroupSeriesWorkerID INT  NOT NULL,
ExceptionDate DATETIME  NOT NULL,
Remove BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_GroupSeriesWorkerExceptionID_GroupSeriesWorkerException PRIMARY KEY CLUSTERED (GroupSeriesWorkerExceptionID)
);

CREATE TABLE HapiUpLoadFileMapping (
FileExt VARCHAR(5)  NOT NULL,
classPath VARCHAR(50)  NOT NULL,
MethodName VARCHAR(30)  NOT NULL,
PageName VARCHAR(30)  NOT NULL,
ChapterName VARCHAR(30)  NOT NULL,
FileName VARCHAR(30)  NOT NULL,
UserStamp INT  NULL
);

CREATE TABLE Hapiuploadsubmitlog (
SubmissionID INT IDENTITY(1,1) NOT NULL,
Userid INT  NOT NULL,
Useremail VARCHAR(60)  NOT NULL,
Status VARCHAR(30)  NOT NULL,
Caseno INT  NOT NULL,
SubmitDate DATETIME  NOT NULL,
uploadFilename VARCHAR(60)  NULL,
StatusDescription VARCHAR(255)  NULL,
Constraint PK_SubmissionID_Hapiuploadsubmitlog PRIMARY KEY CLUSTERED (SubmissionID)
);

CREATE TABLE Help (
HelpID INT IDENTITY(1,1) NOT NULL,
HelpText VARCHAR(MAX)  NOT NULL,
IsHarmonyHelp BIT  NOT NULL,
Constraint PK_HelpID_Help PRIMARY KEY CLUSTERED (HelpID)
);

CREATE TABLE HISACTIVITYNOTES (
ACTIVITYNOTEID INT IDENTITY(1,1) NOT NULL,
NoteSnapshot VARCHAR(MAX)  NULL,
NoteType VARCHAR(25)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
USERSTAMP INT  NOT NULL,
ActivityID INT  NOT NULL,
Constraint PK_ACTIVITYNOTEID_HISACTIVITYNOTES PRIMARY KEY CLUSTERED (ACTIVITYNOTEID)
);

CREATE TABLE HISAddress (
AddressID INT IDENTITY(1,1) NOT NULL,
AddressType VARCHAR(100)  NULL,
AddressCategory VARCHAR(100)  NULL,
[Primary] BIT  NOT NULL,
Street VARCHAR(100)  NULL,
Street2 VARCHAR(100)  NULL,
City VARCHAR(30)  NULL,
State VARCHAR(100)  NULL,
ZipCode VARCHAR(10)  NULL,
PostalCode VARCHAR(30)  NULL,
CensusTract VARCHAR(7)  NULL,
District VARCHAR(25)  NULL,
Country VARCHAR(25)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
Comments VARCHAR(MAX)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
AddressValid BIT  NULL,
AddressValidDate DATETIME  NULL,
Constraint PK_AddressID_HISAddress PRIMARY KEY CLUSTERED (AddressID)
);

CREATE TABLE HISAllegation (
AllegationID INT IDENTITY(1,1) NOT NULL,
EntityName VARCHAR(100)  NOT NULL,
EntityID INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
AllegationType VARCHAR(100)  NOT NULL,
AllegationSubType VARCHAR(MAX)  NULL,
AllegationDescription VARCHAR(MAX)  NULL,
Determination VARCHAR(100)  NULL,
DeterminationDate DATETIME  NULL,
Outcome VARCHAR(100)  NULL,
Status VARCHAR(100)  NULL,
AllegedVictim VARCHAR(250)  NULL,
[Primary] BIT  NOT NULL,
Constraint PK_AllegationID_HISAllegation PRIMARY KEY CLUSTERED (AllegationID)
);

CREATE TABLE HISAllegationPerpetrator (
AllegationPerpetratorID INT IDENTITY(1,1) NOT NULL,
ParticipantID INT  NOT NULL,
AllegationID INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Determination VARCHAR(100)  NULL,
DeterminationDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
Constraint PK_AllegationPerpetratorID_HISAllegationPerpetrator PRIMARY KEY CLUSTERED (AllegationPerpetratorID)
);

CREATE TABLE HISAppeal (
AppealID INT IDENTITY(1,1) NOT NULL,
AllegationPerpetratorID INT  NOT NULL,
AppealType VARCHAR(100)  NULL,
AppealFiledDate DATETIME  NULL,
AppealDecision VARCHAR(100)  NULL,
AppealDecisionDate DATETIME  NULL,
RegistryRemoval BIT  NULL,
RegistryRemovalDate DATETIME  NULL,
RegistryRemovalComments VARCHAR(MAX)  NULL,
CAPStatus VARCHAR(100)  NULL,
CAPCompletionDate DATETIME  NULL,
AppealsProcessStatus VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppealsGenericDate1 DATETIME  NULL,
AppealsGenericDate2 DATETIME  NULL,
AppealsGenericLookup1 VARCHAR(100)  NULL,
AppealsGenericLookup2 VARCHAR(100)  NULL,
AppealsGenericComment1 VARCHAR(4000)  NULL,
AppealsGenericComment2 VARCHAR(4000)  NULL,
AssessID INT  NULL,
AllegationSummary VARCHAR(4000)  NULL,
DescriptionOfDisposition VARCHAR(4000)  NULL,
ApprovalDate DATETIME  NULL,
RequestForHearingDate DATETIME  NULL,
RegistryAddedDate DATETIME  NULL,
HearingScheduledDate DATETIME  NULL,
HearingScheduledTime DATETIME  NULL,
HearingDecisionDate DATETIME  NULL,
HearingDecisionTime DATETIME  NULL,
AppealsGenericLookup3 VARCHAR(100)  NULL,
AppealsGenericWorkerSearch1 INT  NULL,
AppealsGenericLookup4 VARCHAR(100)  NULL,
AppealsGenericDate3 DATETIME  NULL,
RegistryEntryText VARCHAR(MAX)  NULL,
AppealsGenericText1 VARCHAR(MAX)  NULL,
AppealsGenericText2 VARCHAR(MAX)  NULL,
RepresentativeFirstName VARCHAR(200)  NULL,
RepresentativeLastName VARCHAR(200)  NULL,
RepresentativeStreet1 VARCHAR(200)  NULL,
RepresentativeStreet2 VARCHAR(200)  NULL,
RepresentativeCity VARCHAR(100)  NULL,
RepresentativeState VARCHAR(100)  NULL,
RepresentativeZip VARCHAR(10)  NULL,
Constraint PK_AppealID_HISAppeal PRIMARY KEY CLUSTERED (AppealID)
);

CREATE TABLE HISAppointmentRenter (
AppointmentRenterID INT IDENTITY(1,1) NOT NULL,
INQUIRYID INT  NOT NULL,
AppointmentID INT  NOT NULL,
ARGenericDrop1 VARCHAR(50)  NULL,
ARGenericDrop2 VARCHAR(50)  NULL,
ARGenericDrop3 VARCHAR(50)  NULL,
ARGenericDrop4 VARCHAR(50)  NULL,
ARGenericDrop5 VARCHAR(50)  NULL,
ARGenericDate1 DATETIME  NULL,
ARGenericDate2 DATETIME  NULL,
ARGenericDate3 DATETIME  NULL,
ARGenericDate4 DATETIME  NULL,
ARGenericDate5 DATETIME  NULL,
ARGenericText1 VARCHAR(50)  NULL,
ARGenericText2 VARCHAR(50)  NULL,
ARGenericText3 VARCHAR(50)  NULL,
ARGenericText4 VARCHAR(50)  NULL,
ARGenericText5 VARCHAR(50)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
ARGenericDrop6 VARCHAR(MAX)  NULL,
Constraint PK_AppointmentRenterID_HISAppointmentRenter PRIMARY KEY CLUSTERED (AppointmentRenterID)
);

CREATE TABLE HISAssessmentConfiguration (
ConfigID INT IDENTITY(1,1) NOT NULL,
Source VARCHAR(10)  NULL,
SourceName VARCHAR(100)  NULL,
CurrentSourceStatus VARCHAR(50)  NULL,
NewSourceStatus VARCHAR(50)  NULL,
SamsStatusQuestionID VARCHAR(15)  NULL,
Target VARCHAR(10)  NULL,
TargetName VARCHAR(100)  NULL,
TargetStatus VARCHAR(50)  NULL,
ActionUUID VARCHAR(16)  NULL,
AssessmentsLastChecked DATETIME  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_ConfigID_HISAssessmentConfiguration PRIMARY KEY CLUSTERED (ConfigID)
);

CREATE TABLE HISAssessmentSuggestedService (
AssessmentSuggestedServiceID INT IDENTITY(1,1) NOT NULL,
EntityID INT  NOT NULL,
EntityName VARCHAR(255)  NOT NULL,
ServiceID INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
UnitsPer NUMERIC(19,2)  NOT NULL,
UnitsOfMeasure VARCHAR(25)  NOT NULL,
NumberOfPeriods NUMERIC(19,2)  NOT NULL,
UnitCost NUMERIC(19,4)  NOT NULL,
Units NUMERIC(19,4)  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
Justification VARCHAR(MAX)  NULL,
FundCode VARCHAR(25)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_AssessmentSuggestedServiceID_HISAssessmentSuggestedService PRIMARY KEY CLUSTERED (AssessmentSuggestedServiceID)
);

CREATE TABLE HISBenefitEnrollment (
BenefitEnrollmentID INT IDENTITY(1,1) NOT NULL,
BenefitEnrollmentBatchID INT  NOT NULL,
PayorID INT  NULL,
CaseNo INT  NULL,
LastName VARCHAR(60)  NULL,
SSN VARCHAR(15)  NULL,
MedicaidID VARCHAR(50)  NULL,
PolicyNumber VARCHAR(50)  NULL,
CaseNumberFromFile VARCHAR(50)  NULL,
MaintenanceTypeCode VARCHAR(3)  NULL,
MaintenanceReasonCode VARCHAR(3)  NULL,
EmploymentStatusCode VARCHAR(2)  NULL,
MaintenanceEffectiveDate DATETIME  NULL,
EligibilityBeginDate DATETIME  NULL,
HealthCoverageTypeCode VARCHAR(3)  NULL,
InsuranceLineCode VARCHAR(3)  NULL,
LateEnrollment VARCHAR(1)  NULL,
HealthCoverageStart DATETIME  NULL,
HealthCoverageEnd DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_BenefitEnrollmentID_HISBenefitEnrollment PRIMARY KEY CLUSTERED (BenefitEnrollmentID)
);

CREATE TABLE HISBenefitEnrollmentBatch (
BenefitEnrollmentBatchID INT IDENTITY(1,1) NOT NULL,
PurposeCode VARCHAR(2)  NULL,
ReferenceID VARCHAR(50)  NULL,
FileCreationDate DATETIME  NULL,
ActionCode VARCHAR(2)  NULL,
FileEffectiveDate DATETIME  NULL,
FileMaintenanceEffectiveDate DATETIME  NULL,
RecordTotal INT  NULL,
FileName VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
FileStatus VARCHAR(100)  NULL,
Active BIT  NOT NULL,
Constraint PK_BenefitEnrollmentBatchID_HISBenefitEnrollmentBatch PRIMARY KEY CLUSTERED (BenefitEnrollmentBatchID)
);

CREATE TABLE HISClientDonationPayment (
ClientDonationPaymentID INT IDENTITY(1,1) NOT NULL,
ClientDonationRequestID INT  NOT NULL,
PaidAmount VARCHAR(8)  NOT NULL,
CheckNo VARCHAR(20)  NULL,
PaymentType VARCHAR(100)  NOT NULL,
PaymentStatus VARCHAR(100)  NOT NULL,
PaymentDateTime DATETIME  NULL,
Comments VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericDate1 DATETIME  NULL,
Constraint PK_ClientDonationPaymentID_HISClientDonationPayment PRIMARY KEY CLUSTERED (ClientDonationPaymentID)
);

CREATE TABLE HISClientDonationRequest (
ClientDonationRequestID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
RequestType VARCHAR(100)  NOT NULL,
RequestedAmount VARCHAR(8)  NOT NULL,
Comments VARCHAR(100)  NULL,
RequestStatus VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
CreatedUserID INT  NOT NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericDate1 DATETIME  NULL,
Constraint PK_ClientDonationRequestID_HISClientDonationRequest PRIMARY KEY CLUSTERED (ClientDonationRequestID)
);

CREATE TABLE HISCondition (
ConditionID INT IDENTITY(1,1) NOT NULL,
Languages VARCHAR(MAX)  NULL,
Accessibility VARCHAR(MAX)  NULL,
SpecialConditions VARCHAR(MAX)  NULL,
PaymentOptions VARCHAR(MAX)  NULL,
AcceptsMales BIT  NULL,
MinAgeMales NUMERIC(18,0)  NULL,
MaxAgeMales NUMERIC(18,0)  NULL,
AcceptsFemales BIT  NULL,
MinAgeFemales NUMERIC(18,0)  NULL,
MaxAgeFemales NUMERIC(18,0)  NULL,
ChapterEntityID INT  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConditionID_HISCondition PRIMARY KEY CLUSTERED (ConditionID)
);

CREATE TABLE HISConsumerBudget (
ConsumerBudgetID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
BudgetNo VARCHAR(50)  NULL,
OpenID INT  NULL,
Programs VARCHAR(MAX)  NULL,
InsuranceID INT  NULL,
BudgetType VARCHAR(100)  NOT NULL,
BudgetStatus VARCHAR(100)  NOT NULL,
FiscalYear VARCHAR(100)  NULL,
Description VARCHAR(50)  NULL,
Worker1 INT  NULL,
Worker2 INT  NULL,
Worker3 INT  NULL,
ApprovedBy INT  NULL,
ApprovalDate DATETIME  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
TerminationDate DATETIME  NULL,
TerminationReason VARCHAR(100)  NULL,
TerminatedBy INT  NULL,
Comments VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AlgorithmAmount NUMERIC(19,2)  NULL,
GenericCurrency1 NUMERIC(19,2)  NULL,
GenericCurrency2 NUMERIC(19,2)  NULL,
GenericCurrency3 NUMERIC(19,2)  NULL,
GenericText1 VARCHAR(255)  NULL,
GenericText2 VARCHAR(255)  NULL,
GenericText3 VARCHAR(255)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
BudgetAmount NUMERIC(19,2)  NULL,
AmountEncumbered NUMERIC(19,2)  NULL,
Constraint PK_ConsumerBudgetID_HISConsumerBudget PRIMARY KEY CLUSTERED (ConsumerBudgetID)
);

CREATE TABLE HISConsumerBudgetAuth (
ConsumerBudgetAuthID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetID INT  NOT NULL,
AuthID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConsumerBudgetAuthID_HISConsumerBudgetAuth PRIMARY KEY CLUSTERED (ConsumerBudgetAuthID)
);

CREATE TABLE HISConsumerBudgetCostPlan (
ConsumerBudgetCostPlanID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetID INT  NOT NULL,
CostPlanNo VARCHAR(50)  NULL,
CostPlanStatus VARCHAR(100)  NOT NULL,
FiscalYear VARCHAR(100)  NULL,
ProgramID INT  NULL,
EncumberBudget VARCHAR(100)  NULL,
Description VARCHAR(50)  NULL,
ApprovedBy INT  NULL,
ApprovalDate DATETIME  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
TerminationDate DATETIME  NULL,
TerminationReason VARCHAR(100)  NULL,
TerminatedBy INT  NULL,
GenericCurrency1 NUMERIC(19,2)  NULL,
Comments VARCHAR(MAX)  NULL,
CostPlanAmount NUMERIC(19,2)  NULL,
AvailableBudgetAmount NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConsumerBudgetCostPlanID_HISConsumerBudgetCostPlan PRIMARY KEY CLUSTERED (ConsumerBudgetCostPlanID)
);

CREATE TABLE HISConsumerBudgetCostPlanInformation (
CostPlanInformationID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetsConfigurationID INT  NOT NULL,
ServiceCategory VARCHAR(100)  NOT NULL,
SERVICEID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_CostPlanInformationID_HISConsumerBudgetCostPlanInformation PRIMARY KEY CLUSTERED (CostPlanInformationID)
);

CREATE TABLE HISConsumerBudgetPlans (
ConsumerBudgetPlanID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetID INT  NOT NULL,
PlanID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConsumerBudgetPlanID_HISConsumerBudgetPlans PRIMARY KEY CLUSTERED (ConsumerBudgetPlanID)
);

CREATE TABLE HISConsumerBudgetsConfiguration (
ConsumerBudgetsConfigurationID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetType VARCHAR(100)  NOT NULL,
Programs VARCHAR(MAX)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConsumerBudgetsConfigurationID_HISConsumerBudgetsConfiguration PRIMARY KEY CLUSTERED (ConsumerBudgetsConfigurationID)
);

CREATE TABLE HISConsumerBudgetTransaction (
ConsumerBudgetTransID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetID INT  NOT NULL,
TransactionNo VARCHAR(50)  NULL,
Amount NUMERIC(19,2)  NOT NULL,
TransactionType VARCHAR(100)  NOT NULL,
OtherTransaction VARCHAR(255)  NULL,
ReasonTransaction VARCHAR(100)  NULL,
TransactionDate DATETIME  NOT NULL,
Comments VARCHAR(255)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ConsumerBudgetTransID_HISConsumerBudgetTransaction PRIMARY KEY CLUSTERED (ConsumerBudgetTransID)
);

CREATE TABLE HISContactEntryExitTracking (
ContactCardID INT IDENTITY(1,1) NOT NULL,
ContactID INT  NOT NULL,
CardID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Caseno INT  NULL,
EntranceExit BIT  NOT NULL,
FacilityID INT  NOT NULL,
Comment VARCHAR(255)  NULL,
CardSwiped BIT  NOT NULL,
Constraint PK_ContactCardID_HISContactEntryExitTracking PRIMARY KEY CLUSTERED (ContactCardID)
);

CREATE TABLE HISCostPlanService (
CostPlanServiceID INT IDENTITY(1,1) NOT NULL,
CostPlanServiceCategoryID INT  NOT NULL,
ConsumerBudgetCostPlanID INT  NOT NULL,
ServiceID INT  NOT NULL,
ServiceCostCap NUMERIC(19,2)  NULL,
ServiceDate DATETIME  NULL,
ServiceComments VARCHAR(255)  NULL,
ServiceAllowed VARCHAR(100)  NULL,
ServiceRequired VARCHAR(100)  NULL,
ApplyServiceCostCap VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_CostPlanServiceID_HISCostPlanService PRIMARY KEY CLUSTERED (CostPlanServiceID)
);

CREATE TABLE HISCostPlanServiceCategory (
CostPlanServiceCategoryID INT IDENTITY(1,1) NOT NULL,
ConsumerBudgetCostPlanID INT  NOT NULL,
ServiceCategory VARCHAR(100)  NOT NULL,
CategoryCostCap NUMERIC(19,2)  NULL,
CategoryDate DATETIME  NULL,
CategoryComments VARCHAR(255)  NULL,
ApplyCategoryCostCap VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_CostPlanServiceCategoryID_HISCostPlanServiceCategory PRIMARY KEY CLUSTERED (CostPlanServiceCategoryID)
);

CREATE TABLE HISCredential (
CredentialID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
MemberID INT  NULL,
CredentialType VARCHAR(100)  NOT NULL,
Type VARCHAR(100)  NULL,
CredentialNumber VARCHAR(50)  NULL,
EducationLevel VARCHAR(100)  NULL,
EducationInstitution VARCHAR(100)  NULL,
Location VARCHAR(100)  NULL,
Degree VARCHAR(100)  NULL,
IssuanceDate DATETIME  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Provisional BIT  NULL,
ServiceSpecialties VARCHAR(MAX)  NULL,
Comment VARCHAR(MAX)  NULL,
InsuranceCompany VARCHAR(100)  NULL,
CoverageDescription VARCHAR(MAX)  NULL,
ExceptionExclusion VARCHAR(MAX)  NULL,
LiabilityLimits VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Status VARCHAR(100)  NULL,
AdminMemberID INT  NULL,
Reason VARCHAR(100)  NULL,
Programs VARCHAR(MAX)  NULL,
ProviderPOC INT  NULL,
RenewalDate DATETIME  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericDate4 DATETIME  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
EducationType VARCHAR(MAX)  NULL,
Constraint PK_CredentialID_HISCredential PRIMARY KEY CLUSTERED (CredentialID)
);

CREATE TABLE HISDailyServiceSchedule (
DailyServiceScheduleID INT IDENTITY(1,1) NOT NULL,
ServiceScheduleID INT  NOT NULL,
DayOfWeek VARCHAR(10)  NOT NULL,
NumVisitsPerDay INT  NOT NULL,
NumOfDays INT  NOT NULL,
TotalNumOfVisits INT  NOT NULL,
TotalNumOfUnits INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_DailyServiceScheduleID_HISDailyServiceSchedule PRIMARY KEY CLUSTERED (DailyServiceScheduleID)
);

CREATE TABLE HISEFormImage (
EFormImageID INT IDENTITY(1,1) NOT NULL,
EFormType VARCHAR(100)  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
EntityID INT  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedBy INT  NOT NULL,
EFormImage VARCHAR(MAX)  NOT NULL,
Constraint PK_EFormImageID_HISEFormImage PRIMARY KEY CLUSTERED (EFormImageID)
);

CREATE TABLE HISEligibilityConfiguration (
EligConfigID INT IDENTITY(1,1) NOT NULL,
Priority INT  NOT NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericText3 VARCHAR(100)  NULL,
GenericText4 VARCHAR(100)  NULL,
GenericText5 VARCHAR(100)  NULL,
GenericText6 VARCHAR(300)  NULL,
IsEligibilityActive BIT  NULL,
Constraint PK_EligConfigID_HISEligibilityConfiguration PRIMARY KEY CLUSTERED (EligConfigID)
);

CREATE TABLE HISExperience (
ExperienceID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
MemberID INT  NULL,
ExperienceType VARCHAR(100)  NULL,
Type VARCHAR(100)  NULL,
Employer VARCHAR(100)  NULL,
Trainer VARCHAR(100)  NULL,
TrainingName VARCHAR(100)  NULL,
Location VARCHAR(100)  NULL,
OutCome VARCHAR(100)  NULL,
Credits INT  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
ExpirationDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
GroupNumber VARCHAR(1000)  NULL,
SessionStartTime DATETIME  NULL,
Constraint PK_ExperienceID_HISExperience PRIMARY KEY CLUSTERED (ExperienceID)
);

CREATE TABLE HISExpungementIntake (
ExpungementIntakeID INT IDENTITY(1,1) NOT NULL,
FundCode VARCHAR(25)  NULL,
InqDateTime DATETIME  NULL,
EntryDateTime DATETIME  NULL,
Inquirysource VARCHAR(100)  NULL,
InqType VARCHAR(100)  NULL,
ReceivedByMemberID INT  NULL,
Confidential BIT  NULL,
Status VARCHAR(100)  NULL,
IncidentDateTime DATETIME  NULL,
IncidentLocation VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
AbuseResult VARCHAR(MAX)  NULL,
IncidentNature VARCHAR(100)  NULL,
RiskToInvestigator VARCHAR(100)  NULL,
Disposition VARCHAR(100)  NULL,
ScreeningPriority VARCHAR(100)  NULL,
Queue VARCHAR(100)  NULL,
ScreeningMemberID INT  NULL,
Immediacy VARCHAR(100)  NULL,
Resolution VARCHAR(100)  NULL,
ResolutionDateTime DATETIME  NULL,
AssignedToMemberID INT  NULL,
IncidentQueue VARCHAR(100)  NULL,
ReporterMandatetype VARCHAR(100)  NULL,
ReporterType VARCHAR(100)  NULL,
ReporterRelationship VARCHAR(100)  NULL,
VictimCounty VARCHAR(100)  NULL,
VictimRace VARCHAR(100)  NULL,
VictimEthnicity VARCHAR(100)  NULL,
VictimGender VARCHAR(100)  NULL,
VictimDOB DATETIME  NULL,
VictimAgeAtIntake VARCHAR(20)  NULL,
VictimCurMaritalStatus VARCHAR(100)  NULL,
VictimResidencetype VARCHAR(100)  NULL,
VictimVulnerableCondition VARCHAR(100)  NULL,
AllegationType VARCHAR(100)  NULL,
AllegationSubType VARCHAR(MAX)  NULL,
PerpCounty VARCHAR(100)  NULL,
PerpRace VARCHAR(100)  NULL,
PerpEthnicity VARCHAR(100)  NULL,
PerpGender VARCHAR(100)  NULL,
PerpDOB DATETIME  NULL,
PerpAgeAtIntake VARCHAR(20)  NULL,
PerpRelationship VARCHAR(100)  NULL,
InquiryID INT  NULL,
DataEntryInterval INT  NULL,
ReportInterval INT  NULL,
ResolutionInterval INT  NULL,
Userstamp INT  NOT NULL,
datetimestamp DATETIME  NOT NULL,
ReportType2 VARCHAR(100)  NULL,
Constraint PK_ExpungementIntakeID_HISExpungementIntake PRIMARY KEY CLUSTERED (ExpungementIntakeID)
);

CREATE TABLE HISExpungementInvestigation (
ExpungementInvestigationID INT IDENTITY(1,1) NOT NULL,
Incidentid INT  NULL,
InvestigatorMemberid INT  NULL,
IncidentQueue VARCHAR(100)  NULL,
ReportType VARCHAR(100)  NULL,
ReportDatetime DATETIME  NULL,
Immediacy VARCHAR(100)  NULL,
FirstContactDatetime DATETIME  NULL,
ActualContactDatetime DATETIME  NULL,
DueDatetime DATETIME  NULL,
CompletionDatetime DATETIME  NULL,
Result VARCHAR(100)  NULL,
Status VARCHAR(100)  NULL,
Incidentdatetime DATETIME  NULL,
Location VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
Abuseresult VARCHAR(MAX)  NULL,
Incidentnature VARCHAR(100)  NULL,
ReporterCity VARCHAR(100)  NULL,
ReporterState VARCHAR(100)  NULL,
ReporterZipcode VARCHAR(10)  NULL,
ReporterCounty VARCHAR(100)  NULL,
ReporterMandatetype VARCHAR(100)  NULL,
VictimCity VARCHAR(100)  NULL,
VictimState VARCHAR(100)  NULL,
VictimZipcode VARCHAR(10)  NULL,
VictimCounty VARCHAR(100)  NULL,
VictimGender VARCHAR(100)  NULL,
VictimRace VARCHAR(100)  NULL,
VictimEthnicity VARCHAR(100)  NULL,
VictimDOB DATETIME  NULL,
VictimAgeAtIntake VARCHAR(20)  NULL,
VictimLegalStatus VARCHAR(100)  NULL,
VictimCurMaritalStatus VARCHAR(100)  NULL,
VictimResidenceType VARCHAR(100)  NULL,
VulnerableCondition VARCHAR(100)  NULL,
AllegationType VARCHAR(100)  NULL,
AllegationSubType VARCHAR(MAX)  NULL,
Determination VARCHAR(100)  NULL,
DeterminationDate DATETIME  NULL,
Outcome VARCHAR(100)  NULL,
AllegationStatus VARCHAR(100)  NULL,
PerpParticipantID INT  NULL,
PerpCity VARCHAR(100)  NULL,
PerpState VARCHAR(100)  NULL,
PerpZipCode VARCHAR(10)  NULL,
PerpCounty VARCHAR(100)  NULL,
PerpAgeAtIntake VARCHAR(20)  NULL,
PerpGender VARCHAR(100)  NULL,
PerpRace VARCHAR(100)  NULL,
PerpEthnicity VARCHAR(100)  NULL,
PerpDOB DATETIME  NULL,
PerpRelationship VARCHAR(100)  NULL,
PerpDetermination VARCHAR(100)  NULL,
PerpDeterminationDate DATETIME  NULL,
FundCode VARCHAR(25)  NULL,
EndDate DATETIME  NULL,
ReportFaceToFaceInterval INT  NULL,
FaceToFaceActualInterval INT  NULL,
ReportDeterminationInterval INT  NULL,
DeterminationActualInterval INT  NULL,
Userstamp INT  NOT NULL,
datetimestamp DATETIME  NOT NULL,
OriginalIntakeID INT  NULL,
ReportType2 VARCHAR(100)  NULL,
Constraint PK_ExpungementInvestigationID_HISExpungementInvestigation PRIMARY KEY CLUSTERED (ExpungementInvestigationID)
);

CREATE TABLE HISExpungementInvestigationNote (
ExpungementInvestigationNoteID INT IDENTITY(1,1) NOT NULL,
Incidentid INT  NULL,
NoteID INT  NULL,
NoteDate DATETIME  NULL,
NoteType VARCHAR(100)  NULL,
NoteSubtype VARCHAR(100)  NULL,
NoteByMemberID INT  NULL,
Status VARCHAR(100)  NULL,
ParticipantContactType VARCHAR(100)  NULL,
Userstamp INT  NOT NULL,
datetimestamp DATETIME  NOT NULL,
Constraint PK_ExpungementInvestigationNoteID_HISExpungementInvestigationNote PRIMARY KEY CLUSTERED (ExpungementInvestigationNoteID)
);

CREATE TABLE HISFileLog (
HISFileLog INT IDENTITY(1,1) NOT NULL,
FileName VARCHAR(250)  NULL,
FileType VARCHAR(10)  NULL,
FileStatus VARCHAR(20)  NULL,
TransactionID VARCHAR(9)  NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_HISFileLog_HISFileLog PRIMARY KEY CLUSTERED (HISFileLog)
);

CREATE TABLE HISHour (
HourID INT IDENTITY(1,1) NOT NULL,
HourTypeID INT  NOT NULL,
DayOfWeek VARCHAR(10)  NOT NULL,
StartTime DATETIME  NULL,
EndTime DATETIME  NULL,
Hrs BIT  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_HourID_HISHour PRIMARY KEY CLUSTERED (HourID)
);

CREATE TABLE HISHourType (
HourTypeID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(100)  NULL,
Note VARCHAR(MAX)  NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
Active BIT  NULL,
Constraint PK_HourTypeID_HISHourType PRIMARY KEY CLUSTERED (HourTypeID)
);

CREATE TABLE HISIncidentInquiry (
IncidentInquiryID INT IDENTITY(1,1) NOT NULL,
IncidentID INT  NOT NULL,
InquiryID INT  NOT NULL,
Original BIT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
CreatedBy INT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
Constraint PK_IncidentInquiryID_HISIncidentInquiry PRIMARY KEY CLUSTERED (IncidentInquiryID)
);

CREATE TABLE HISIncidentLink (
IncidentLinkID INT IDENTITY(1,1) NOT NULL,
IncidentID INT  NOT NULL,
LinkedIncidentID INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
CreatedBy INT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
Constraint PK_IncidentLinkID_HISIncidentLink PRIMARY KEY CLUSTERED (IncidentLinkID)
);

CREATE TABLE HISInquiryLink (
InquiryLinkID INT IDENTITY(1,1) NOT NULL,
InquiryID INT  NOT NULL,
LinkedInquiryID INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
CreatedBy INT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
Original BIT  NOT NULL,
Constraint PK_InquiryLinkID_HISInquiryLink PRIMARY KEY CLUSTERED (InquiryLinkID)
);

CREATE TABLE HISInquiryReferral (
InquiryReferralID INT IDENTITY(1,1) NOT NULL,
InquiryID INT  NOT NULL,
VendorID INT  NOT NULL,
ReferralDate DATETIME  NOT NULL,
MemberID INT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
ExcludeFromReport BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_InquiryReferralID_HISInquiryReferral PRIMARY KEY CLUSTERED (InquiryReferralID)
);

CREATE TABLE HISInquiryReferralService (
InquiryReferralServiceID INT IDENTITY(1,1) NOT NULL,
InquiryReferralID INT  NOT NULL,
VServiceID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_InquiryReferralServiceID_HISInquiryReferralService PRIMARY KEY CLUSTERED (InquiryReferralServiceID)
);

CREATE TABLE HISIntegration (
IntegrationID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(15)  NULL,
Name VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_IntegrationID_HISIntegration PRIMARY KEY CLUSTERED (IntegrationID)
);

CREATE TABLE HISIntegrationParameter (
IntegrationParameterID INT IDENTITY(1,1) NOT NULL,
IntegrationID INT  NULL,
ParameterName VARCHAR(255)  NULL,
ParameterType VARCHAR(20)  NULL,
ParameterValue VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_IntegrationParameterID_HISIntegrationParameter PRIMARY KEY CLUSTERED (IntegrationParameterID)
);

CREATE TABLE HISIntegrationTransaction (
HISIntegrationTransactionID INT IDENTITY(1,1) NOT NULL,
IntegrationID INT  NOT NULL,
StartTime DATETIME  NOT NULL,
EndTime DATETIME  NULL,
Status VARCHAR(100)  NOT NULL,
TransactionType VARCHAR(100)  NULL,
Inbound BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_HISIntegrationTransactionID_HISIntegrationTransaction PRIMARY KEY CLUSTERED (HISIntegrationTransactionID)
);

CREATE TABLE HISIntegrationTransactionDetail (
HISIntegrationTransactionDetailID INT IDENTITY(1,1) NOT NULL,
HISIntegrationTransactionID INT  NOT NULL,
HISIntegrationTransactionFileID INT  NULL,
EntityName VARCHAR(256)  NULL,
EntityID INT  NULL,
ExternalEntityID VARCHAR(256)  NULL,
ExternalStatus VARCHAR(100)  NULL,
AdditionalDetail VARCHAR(MAX)  NULL,
Processed BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Hash VARCHAR(MAX)  NULL,
Constraint PK_HISIntegrationTransactionDetailID_HISIntegrationTransactionDetail PRIMARY KEY CLUSTERED (HISIntegrationTransactionDetailID)
);

CREATE TABLE HISIntegrationTransactionError (
HISIntegrationTransactionErrorID INT IDENTITY(1,1) NOT NULL,
HISIntegrationTransactionID INT  NOT NULL,
HISIntegrationTransactionDetailID INT  NULL,
ErrorDescription VARCHAR(MAX)  NULL,
ErrorCode VARCHAR(10)  NULL,
ErrorSeverity INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_HISIntegrationTransactionErrorID_HISIntegrationTransactionError PRIMARY KEY CLUSTERED (HISIntegrationTransactionErrorID)
);

CREATE TABLE HISIntegrationTransactionFile (
HISIntegrationTransactionFileID INT IDENTITY(1,1) NOT NULL,
HISIntegrationTransactionID INT  NOT NULL,
FileName VARCHAR(256)  NOT NULL,
FilePath VARCHAR(MAX)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_HISIntegrationTransactionFileID_HISIntegrationTransactionFile PRIMARY KEY CLUSTERED (HISIntegrationTransactionFileID)
);

CREATE TABLE HISMaxActiveSession (
MaxActiveSessionID INT IDENTITY(1,1) NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
MaxActiveSession INT  NOT NULL,
MachineName VARCHAR(200)  NOT NULL,
InstanceName VARCHAR(200)  NOT NULL,
Constraint PK_MaxActiveSessionID_HISMaxActiveSession PRIMARY KEY CLUSTERED (MaxActiveSessionID)
);

CREATE TABLE HISMCIExport (
MCIExportID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NULL,
MCIEntityID VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NULL,
ToPeopleID INT  NULL,
RetryCount INT  NULL,
MciTask VARCHAR(100)  NULL,
Constraint PK_MCIExportID_HISMCIExport PRIMARY KEY CLUSTERED (MCIExportID)
);

CREATE TABLE HISMedicationAdministration (
HISMedicationAdministrationID INT IDENTITY(1,1) NOT NULL,
MEDICATIONREVIEWID INT  NOT NULL,
AdministrationDate DATETIME  NOT NULL,
ProviderID INT  NULL,
AdministeredBy INT  NULL,
MedAdministered VARCHAR(100)  NULL,
ReasonNotAdministered VARCHAR(100)  NULL,
Explanation VARCHAR(500)  NULL,
Notes VARCHAR(1000)  NULL,
SourceOfRecord VARCHAR(30)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AdministrationTime DATETIME  NOT NULL,
EmarOrderReference VARCHAR(100)  NULL,
EmarUserReference VARCHAR(150)  NULL,
ScheduledDate DATETIME  NULL,
ScheduledTime DATETIME  NULL,
Constraint PK_HISMedicationAdministrationID_HISMedicationAdministration PRIMARY KEY CLUSTERED (HISMedicationAdministrationID)
);

CREATE TABLE HISNeedAssessment (
NeedAssessmentID INT IDENTITY(1,1) NOT NULL,
NeedID INT  NOT NULL,
AssessmentDetReviewID INT  NULL,
AssessmentTable VARCHAR(200)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_NeedAssessmentID_HISNeedAssessment PRIMARY KEY CLUSTERED (NeedAssessmentID)
);

CREATE TABLE HISOfflineConsumer (
OfflineID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
UserID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_OfflineID_HISOfflineConsumer PRIMARY KEY CLUSTERED (OfflineID)
);

CREATE TABLE HISParticipant (
ParticipantID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NULL,
Datetimestamp DATETIME  NOT NULL,
EntityName VARCHAR(20)  NOT NULL,
EntityID INT  NOT NULL,
ContactType VARCHAR(100)  NULL,
EstimatedAge VARCHAR(20)  NULL,
CaregiverType VARCHAR(500)  NULL,
RelationshipToIncident VARCHAR(100)  NULL,
VictimAccess VARCHAR(100)  NULL,
DirectionsToHome VARCHAR(4000)  NULL,
AtResidence VARCHAR(100)  NULL,
VulnerableCondition VARCHAR(MAX)  NULL,
AnonymousReport BIT  NULL,
MandateType VARCHAR(100)  NULL,
Occupation VARCHAR(100)  NULL,
WaivesConfidentiality VARCHAR(100)  NULL,
Userstamp INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Relationship VARCHAR(100)  NULL,
CreatedBy INT  NOT NULL,
PersonType VARCHAR(100)  NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
ReadOnly BIT  NOT NULL,
Confidential BIT  NOT NULL,
ReferralSource VARCHAR(100)  NULL,
DOB DATETIME  NULL,
DOBEstimated BIT  NULL,
DOD DATETIME  NULL,
WebSite VARCHAR(100)  NULL,
Gender VARCHAR(100)  NULL,
Salutation VARCHAR(20)  NULL,
Suffix VARCHAR(10)  NULL,
Title VARCHAR(50)  NULL,
HairColor VARCHAR(100)  NULL,
EyeColor VARCHAR(100)  NULL,
Weight VARCHAR(20)  NULL,
Height VARCHAR(20)  NULL,
IdentifyingMarks VARCHAR(500)  NULL,
Race VARCHAR(MAX)  NULL,
ETHNICITYLOOKUP VARCHAR(100)  NULL,
CITIZENSHIP VARCHAR(100)  NULL,
ASIANLOOKUP VARCHAR(100)  NULL,
LATINOLOOKUP VARCHAR(100)  NULL,
PACIFICISLANDER VARCHAR(100)  NULL,
RELIGION VARCHAR(100)  NULL,
SPIRITUALORIENTATION VARCHAR(20)  NULL,
CHURCHMEMBER BIT  NULL,
CHURCH VARCHAR(50)  NULL,
PARISHLOOKUP VARCHAR(100)  NULL,
PLANGUAGE VARCHAR(100)  NULL,
SLANGUAGE VARCHAR(100)  NULL,
InterpreterNeeded BIT  NULL,
HispanicOrigin BIT  NULL,
INDIANBLOOD VARCHAR(100)  NULL,
TRIBE VARCHAR(50)  NULL,
CountryOfOrigin VARCHAR(100)  NULL,
BIRTHPLACE VARCHAR(100)  NULL,
CurMaritalStatus VARCHAR(100)  NULL,
HOH BIT  NULL,
FAMILYSIZE INT  NULL,
RESIDENCETYPE VARCHAR(100)  NULL,
RESCOUNTY VARCHAR(100)  NULL,
PAYCOUNTY VARCHAR(100)  NULL,
LEGALCOUNTY VARCHAR(100)  NULL,
LegalStatus VARCHAR(MAX)  NULL,
Comment VARCHAR(MAX)  NULL,
GenericText1 VARCHAR(500)  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericDropDown1 VARCHAR(500)  NULL,
GenericDropDown2 VARCHAR(500)  NULL,
GenericDropDown3 VARCHAR(500)  NULL,
GenericDropDown4 VARCHAR(500)  NULL,
GenericDropDown5 VARCHAR(500)  NULL,
GenericDropDown6 VARCHAR(500)  NULL,
GenericDropDown7 VARCHAR(500)  NULL,
GenericDropDown8 VARCHAR(500)  NULL,
GenericDropDown9 VARCHAR(500)  NULL,
GenericDropDown10 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericCheckbox1 BIT  NULL,
GenericCheckbox2 BIT  NULL,
GenericCheckbox3 BIT  NULL,
GenericNumeric1 NUMERIC(19,2)  NULL,
GenericNumeric2 NUMERIC(19,2)  NULL,
GenericNumeric3 NUMERIC(19,2)  NULL,
ReporterType VARCHAR(100)  NULL,
HelpWithAccess VARCHAR(100)  NULL,
TimeToContact VARCHAR(1000)  NULL,
AtRiskFromPerp VARCHAR(100)  NULL,
Whereabouts VARCHAR(250)  NULL,
AccessToFunds VARCHAR(100)  NULL,
CapacityConsent VARCHAR(100)  NULL,
AgeAtIntake VARCHAR(20)  NULL,
ConsumerCall BIT  NULL,
IncomeSource VARCHAR(MAX)  NULL,
TotalIncome NUMERIC(19,4)  NULL,
HealthCondition VARCHAR(500)  NULL,
HCBSRecipient VARCHAR(50)  NULL,
MultiRace VARCHAR(MAX)  NULL,
OtherCommMethod VARCHAR(500)  NULL,
NonVerbal BIT  NULL,
LocationOfVictim VARCHAR(100)  NULL,
RelshipDescription VARCHAR(500)  NULL,
Notification BIT  NULL,
SchoolName VARCHAR(50)  NULL,
IndividualsInHome VARCHAR(MAX)  NULL,
SchoolDistrict VARCHAR(50)  NULL,
PrimaryYN BIT  NOT NULL,
Employer VARCHAR(100)  NULL,
ContactPersonOnly BIT  NULL,
Multirelationship VARCHAR(MAX)  NULL,
SexualOrientation VARCHAR(100)  NULL,
Transgender VARCHAR(100)  NULL,
DateIncidentKnown DATETIME  NULL,
ReceivingServices VARCHAR(MAX)  NULL,
ReceivingServicesComments VARCHAR(MAX)  NULL,
ProviderID INT  NULL,
ProgramParticipation VARCHAR(MAX)  NULL,
PreviousVictim VARCHAR(500)  NULL,
LevelOfEducation VARCHAR(500)  NULL,
EmploymentStatus VARCHAR(100)  NULL,
CriminalBackgroundCheck VARCHAR(100)  NULL,
VeteranStatus VARCHAR(500)  NULL,
Searchable BIT  NULL,
CaseNo INT  NULL,
RequestedServices VARCHAR(MAX)  NULL,
RecommendedServices VARCHAR(MAX)  NULL,
IncomeLevel VARCHAR(100)  NULL,
Disabilities VARCHAR(MAX)  NULL,
ADLScoreNAMRS INT  NULL,
IADLScoreNAMRS INT  NULL,
BehavioralScreening VARCHAR(MAX)  NULL,
LivingSettingStart VARCHAR(MAX)  NULL,
LivingSettingClose VARCHAR(MAX)  NULL,
DecisionMakerStart VARCHAR(MAX)  NULL,
DecisionMakerClose VARCHAR(MAX)  NULL,
ServicesStart VARCHAR(MAX)  NULL,
ServicesAPS VARCHAR(MAX)  NULL,
ServicesReferred VARCHAR(MAX)  NULL,
ServicesClose VARCHAR(MAX)  NULL,
CohabitationStart VARCHAR(100)  NULL,
CohabitationClose VARCHAR(100)  NULL,
PerpAssociationStart VARCHAR(100)  NULL,
PerpAssociationClose VARCHAR(100)  NULL,
PerpLegalRemedy VARCHAR(MAX)  NULL,
PeopleSearchExecutedBy VARCHAR(100)  NULL,
PeopleSearchExecutedDateTime DATETIME  NULL,
PeopleSearchCancelBy VARCHAR(100)  NULL,
PeopleSearchCancelDateTime DATETIME  NULL,
GenderIdentity VARCHAR(50)  NULL,
Pronouns VARCHAR(50)  NULL,
GenericText4 VARCHAR(500)  NULL,
GenericText5 VARCHAR(500)  NULL,
GenericText6 VARCHAR(500)  NULL,
GenericText7 VARCHAR(500)  NULL,
GenericText8 VARCHAR(500)  NULL,
GenericText9 VARCHAR(500)  NULL,
GenericText10 VARCHAR(500)  NULL,
GenericText11 VARCHAR(500)  NULL,
GenericText13 VARCHAR(MAX)  NULL,
GenericText14 VARCHAR(MAX)  NULL,
GenericText15 VARCHAR(MAX)  NULL,
Constraint PK_ParticipantID_HISParticipant PRIMARY KEY CLUSTERED (ParticipantID)
);

CREATE TABLE HISParticipantAddress (
ParticipantAddressID INT IDENTITY(1,1) NOT NULL,
ParticipantID INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedBy INT  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
AddressType VARCHAR(100)  NULL,
AddressCategory VARCHAR(100)  NULL,
AddressValid BIT  NOT NULL,
AddressMailable BIT  NOT NULL,
Street VARCHAR(100)  NULL,
Street2 VARCHAR(100)  NULL,
City VARCHAR(30)  NULL,
State VARCHAR(100)  NULL,
StateAbrev VARCHAR(2)  NULL,
ZipCode VARCHAR(10)  NULL,
PostalCode VARCHAR(30)  NULL,
FipsCode NUMERIC(5,0)  NULL,
CensusTract VARCHAR(7)  NULL,
District VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
Country VARCHAR(100)  NULL,
CountryAbrev VARCHAR(2)  NULL,
GenericText1 VARCHAR(255)  NULL,
GenericText2 VARCHAR(255)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericCheckbox1 BIT  NULL,
GenericCheckbox2 BIT  NULL,
GenericNumeric1 NUMERIC(19,2)  NULL,
GenericNumeric2 NUMERIC(19,2)  NULL,
Display BIT  NOT NULL,
AddressValidDate DATETIME  NULL,
GPSLocation VARCHAR(50)  NULL,
DescriptiveAddress VARCHAR(4000)  NULL,
Rural VARCHAR(100)  NULL,
Constraint PK_ParticipantAddressID_HISParticipantAddress PRIMARY KEY CLUSTERED (ParticipantAddressID)
);

CREATE TABLE HISParticipantEmail (
ParticipantEmailID INT IDENTITY(1,1) NOT NULL,
ParticipantID INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedBy INT  NOT NULL,
EmailType VARCHAR(100)  NOT NULL,
EmailCategory VARCHAR(100)  NULL,
EmailValid BIT  NOT NULL,
EmailUsable BIT  NOT NULL,
Email VARCHAR(100)  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
Display BIT  NOT NULL,
Constraint PK_ParticipantEmailID_HISParticipantEmail PRIMARY KEY CLUSTERED (ParticipantEmailID)
);

CREATE TABLE HISParticipantIdentifier (
ParticipantIdentifierID INT IDENTITY(1,1) NOT NULL,
ParticipantID INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedBy INT  NOT NULL,
IdentifierType VARCHAR(100)  NOT NULL,
IdentifierValue VARCHAR(50)  NOT NULL,
IdentifierFormat VARCHAR(30)  NULL,
IdentifierLoc VARCHAR(30)  NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
Display BIT  NOT NULL,
Constraint PK_ParticipantIdentifierID_HISParticipantIdentifier PRIMARY KEY CLUSTERED (ParticipantIdentifierID)
);

CREATE TABLE HISParticipantName (
ParticipantNameID INT IDENTITY(1,1) NOT NULL,
ParticipantID INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
CreatedBy INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
NameType VARCHAR(100)  NULL,
FIRSTNAME VARCHAR(30)  NULL,
LASTNAME VARCHAR(30)  NULL,
MIDDLENAME VARCHAR(30)  NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
Display BIT  NOT NULL,
Suffix VARCHAR(10)  NULL,
Constraint PK_ParticipantNameID_HISParticipantName PRIMARY KEY CLUSTERED (ParticipantNameID)
);

CREATE TABLE HISParticipantPhone (
ParticipantPhoneID INT IDENTITY(1,1) NOT NULL,
ParticipantID INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedBy INT  NOT NULL,
PhoneType VARCHAR(100)  NULL,
PhoneCategory VARCHAR(100)  NULL,
PhoneValid BIT  NOT NULL,
PhoneCallable BIT  NOT NULL,
Phone VARCHAR(16)  NOT NULL,
NewPhone VARCHAR(16)  NULL,
Extension VARCHAR(9)  NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
Display BIT  NOT NULL,
Constraint PK_ParticipantPhoneID_HISParticipantPhone PRIMARY KEY CLUSTERED (ParticipantPhoneID)
);

CREATE TABLE HISPeople (
PeopleID INT IDENTITY(1,1) NOT NULL,
OriginalPeopleID INT  NULL,
Caseno INT  NULL,
ContactID INT  NULL,
CreatedBy INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
PersonType VARCHAR(100)  NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
ReadOnly BIT  NOT NULL,
Confidential BIT  NOT NULL,
ReferralSource VARCHAR(100)  NULL,
DOB DATETIME  NULL,
DOBEstimated BIT  NULL,
DOD DATETIME  NULL,
WebSite VARCHAR(100)  NULL,
Gender VARCHAR(100)  NULL,
Salutation VARCHAR(20)  NULL,
Suffix VARCHAR(10)  NULL,
Title VARCHAR(50)  NULL,
HairColor VARCHAR(100)  NULL,
EyeColor VARCHAR(100)  NULL,
Weight VARCHAR(20)  NULL,
Height VARCHAR(20)  NULL,
IdentifyingMarks VARCHAR(500)  NULL,
Race VARCHAR(MAX)  NULL,
ETHNICITYLOOKUP VARCHAR(100)  NULL,
CITIZENSHIP VARCHAR(100)  NULL,
ASIANLOOKUP VARCHAR(100)  NULL,
LATINOLOOKUP VARCHAR(100)  NULL,
PACIFICISLANDER VARCHAR(100)  NULL,
RELIGION VARCHAR(100)  NULL,
SPIRITUALORIENTATION VARCHAR(20)  NULL,
CHURCHMEMBER BIT  NULL,
CHURCH VARCHAR(50)  NULL,
PARISHLOOKUP VARCHAR(100)  NULL,
PLANGUAGE VARCHAR(100)  NULL,
SLANGUAGE VARCHAR(100)  NULL,
InterpreterNeeded BIT  NULL,
HispanicOrigin BIT  NULL,
INDIANBLOOD VARCHAR(100)  NULL,
TRIBE VARCHAR(50)  NULL,
CountryOfOrigin VARCHAR(100)  NULL,
BIRTHPLACE VARCHAR(100)  NULL,
CurMaritalStatus VARCHAR(100)  NULL,
HOH BIT  NULL,
FAMILYSIZE INT  NULL,
RESIDENCETYPE VARCHAR(100)  NULL,
RESCOUNTY VARCHAR(100)  NULL,
PAYCOUNTY VARCHAR(100)  NULL,
LEGALCOUNTY VARCHAR(100)  NULL,
LegalStatus VARCHAR(MAX)  NULL,
Comment VARCHAR(MAX)  NULL,
GenericText1 VARCHAR(500)  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericDropDown1 VARCHAR(500)  NULL,
GenericDropDown2 VARCHAR(500)  NULL,
GenericDropDown3 VARCHAR(500)  NULL,
GenericDropDown4 VARCHAR(500)  NULL,
GenericDropDown5 VARCHAR(500)  NULL,
GenericDropDown6 VARCHAR(500)  NULL,
GenericDropDown7 VARCHAR(500)  NULL,
GenericDropDown8 VARCHAR(500)  NULL,
GenericDropDown9 VARCHAR(500)  NULL,
GenericDropDown10 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericCheckbox1 BIT  NULL,
GenericCheckbox2 BIT  NULL,
GenericCheckbox3 BIT  NULL,
GenericNumeric1 NUMERIC(19,2)  NULL,
GenericNumeric2 NUMERIC(19,2)  NULL,
GenericNumeric3 NUMERIC(19,2)  NULL,
MemberID INT  NULL,
Searchable BIT  NULL,
IncomeSource VARCHAR(MAX)  NULL,
TotalIncome NUMERIC(19,4)  NULL,
MultiRace VARCHAR(MAX)  NULL,
Occupation VARCHAR(100)  NULL,
Employer VARCHAR(100)  NULL,
SexualOrientation VARCHAR(100)  NULL,
Transgender VARCHAR(100)  NULL,
ProviderID INT  NULL,
NAMRSID VARCHAR(32)  NULL,
GenderIdentity VARCHAR(50)  NULL,
Pronouns VARCHAR(50)  NULL,
GenericText4 VARCHAR(500)  NULL,
GenericText5 VARCHAR(500)  NULL,
GenericText6 VARCHAR(500)  NULL,
GenericText7 VARCHAR(500)  NULL,
GenericText8 VARCHAR(500)  NULL,
GenericText9 VARCHAR(500)  NULL,
GenericText10 VARCHAR(500)  NULL,
GenericText11 VARCHAR(500)  NULL,
ReporterType VARCHAR(100)  NULL,
LivingSettingStart VARCHAR(MAX)  NULL,
BehavioralScreening VARCHAR(MAX)  NULL,
Disabilities VARCHAR(MAX)  NULL,
GenericText13 VARCHAR(MAX)  NULL,
GenericText14 VARCHAR(MAX)  NULL,
GenericText15 VARCHAR(MAX)  NULL,
LevelOfEducation VARCHAR(500)  NULL,
EmploymentStatus VARCHAR(100)  NULL,
IncomeLevel VARCHAR(100)  NULL,
VeteranStatus VARCHAR(500)  NULL,
ADLScoreNAMRS INT  NULL,
IADLScoreNAMRS INT  NULL,
LivingSettingClose VARCHAR(MAX)  NULL,
DecisionMakerStart VARCHAR(MAX)  NULL,
DecisionMakerClose VARCHAR(MAX)  NULL,
ServicesStart VARCHAR(MAX)  NULL,
ServicesAPS VARCHAR(MAX)  NULL,
ServicesReferred VARCHAR(MAX)  NULL,
ServicesClose VARCHAR(MAX)  NULL,
PreviousVictim VARCHAR(500)  NULL,
CohabitationStart VARCHAR(100)  NULL,
CohabitationClose VARCHAR(100)  NULL,
Relationship VARCHAR(100)  NULL,
PerpAssociationStart VARCHAR(100)  NULL,
PerpAssociationClose VARCHAR(100)  NULL,
PerpLegalRemedy VARCHAR(MAX)  NULL,
DirectionsToHome VARCHAR(4000)  NULL,
ReceivingServices VARCHAR(MAX)  NULL,
Constraint PK_PeopleID_HISPeople PRIMARY KEY CLUSTERED (PeopleID)
);

CREATE TABLE HISPeopleAddress (
PeopleAddressID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NOT NULL,
CreatedBy INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
AddressType VARCHAR(100)  NULL,
AddressCategory VARCHAR(100)  NULL,
AddressValid BIT  NOT NULL,
AddressMailable BIT  NOT NULL,
Street VARCHAR(100)  NULL,
Street2 VARCHAR(100)  NULL,
City VARCHAR(30)  NULL,
State VARCHAR(100)  NULL,
StateAbrev VARCHAR(2)  NULL,
ZipCode VARCHAR(10)  NULL,
PostalCode VARCHAR(30)  NULL,
FipsCode VARCHAR(15)  NULL,
CensusTract VARCHAR(7)  NULL,
District VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
Country VARCHAR(100)  NULL,
CountryAbrev VARCHAR(2)  NULL,
GenericText1 VARCHAR(255)  NULL,
GenericText2 VARCHAR(255)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericCheckbox1 BIT  NULL,
GenericCheckbox2 BIT  NULL,
GenericNumeric1 NUMERIC(19,2)  NULL,
GenericNumeric2 NUMERIC(19,2)  NULL,
Display BIT  NOT NULL,
AddressValidDate DATETIME  NULL,
GPSLocation VARCHAR(50)  NULL,
DescriptiveAddress VARCHAR(4000)  NULL,
Rural VARCHAR(100)  NULL,
Constraint PK_PeopleAddressID_HISPeopleAddress PRIMARY KEY CLUSTERED (PeopleAddressID)
);

CREATE TABLE HISPeopleEmail (
PeopleEmailID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NOT NULL,
CreatedBy INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
EmailType VARCHAR(100)  NULL,
EmailCategory VARCHAR(100)  NULL,
EmailValid BIT  NOT NULL,
EmailUsable BIT  NOT NULL,
Email VARCHAR(100)  NOT NULL,
Display BIT  NOT NULL,
Constraint PK_PeopleEmailID_HISPeopleEmail PRIMARY KEY CLUSTERED (PeopleEmailID)
);

CREATE TABLE HISPeopleIdentifier (
PeopleIdentifierID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NOT NULL,
CreatedBy INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
IdentifierType VARCHAR(100)  NOT NULL,
IdentifierValue VARCHAR(50)  NULL,
IdentifierFormat VARCHAR(30)  NULL,
IdentifierLoc VARCHAR(30)  NULL,
Display BIT  NOT NULL,
Constraint PK_PeopleIdentifierID_HISPeopleIdentifier PRIMARY KEY CLUSTERED (PeopleIdentifierID)
);

CREATE TABLE HISPeopleImage (
PeopleImageID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NULL,
ImageFile VARCHAR(MAX)  NULL,
ImageName VARCHAR(100)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
Comment VARCHAR(255)  NULL,
ThumbnailFile VARCHAR(MAX)  NULL,
PageUploadedFrom VARCHAR(50)  NULL,
Constraint PK_PeopleImageID_HISPeopleImage PRIMARY KEY CLUSTERED (PeopleImageID)
);

CREATE TABLE HISPeopleName (
PeopleNameID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NOT NULL,
CreatedBy INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
NameType VARCHAR(100)  NULL,
FIRSTNAME VARCHAR(30)  NULL,
LASTNAME VARCHAR(30)  NULL,
MIDDLENAME VARCHAR(30)  NULL,
Display BIT  NOT NULL,
Constraint PK_PeopleNameID_HISPeopleName PRIMARY KEY CLUSTERED (PeopleNameID)
);

CREATE TABLE HISPeoplePhone (
PeoplePhoneID INT IDENTITY(1,1) NOT NULL,
PeopleID INT  NOT NULL,
CreatedBy INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
Active BIT  NOT NULL,
PrimaryYN BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
PhoneType VARCHAR(100)  NULL,
PhoneCategory VARCHAR(100)  NULL,
PhoneValid BIT  NOT NULL,
PhoneCallable BIT  NOT NULL,
Phone VARCHAR(16)  NOT NULL,
NewPhone VARCHAR(16)  NULL,
Extension VARCHAR(9)  NULL,
Display BIT  NOT NULL,
Constraint PK_PeoplePhoneID_HISPeoplePhone PRIMARY KEY CLUSTERED (PeoplePhoneID)
);

CREATE TABLE HISPhone (
PhoneID INT IDENTITY(1,1) NOT NULL,
PhoneType VARCHAR(100)  NULL,
PhoneDescription VARCHAR(100)  NULL,
[Primary] BIT  NOT NULL,
PhoneNumber VARCHAR(16)  NOT NULL,
Extension VARCHAR(9)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
PageName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
PhoneFieldLocation VARCHAR(255)  NULL,
Constraint PK_PhoneID_HISPhone PRIMARY KEY CLUSTERED (PhoneID)
);

CREATE TABLE HISPlace (
PlaceID INT IDENTITY(1,1) NOT NULL,
ZipCode VARCHAR(10)  NOT NULL,
FipsCode VARCHAR(5)  NULL,
City VARCHAR(100)  NULL,
District VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
State VARCHAR(100)  NOT NULL,
StateAbrev VARCHAR(2)  NOT NULL,
Country VARCHAR(100)  NULL,
CountryAbrev VARCHAR(2)  NULL,
Active BIT  NOT NULL,
RecordSource VARCHAR(30)  NULL,
RecordSourceDetail VARCHAR(50)  NULL,
RecordSourceVer VARCHAR(10)  NULL,
RecordSourceID INT  NULL,
Imported BIT  NULL,
DateTimeStamp DATETIME  NOT NULL,
Userstamp INT  NULL,
Latitude NUMERIC(19,6)  NULL,
Longitude NUMERIC(19,6)  NULL,
InquiryQueue VARCHAR(100)  NULL,
IncidentQueue VARCHAR(100)  NULL,
AreaCode VARCHAR(90)  NULL,
CityType VARCHAR(2)  NULL,
CityAliasAbbreviation VARCHAR(26)  NULL,
CityAliasName VARCHAR(70)  NULL,
TimeZone VARCHAR(4)  NULL,
Elevation INT  NULL,
CountyFIPS VARCHAR(10)  NULL,
DaylightSaving VARCHAR(2)  NULL,
Rural VARCHAR(100)  NULL,
RUCACode VARCHAR(50)  NULL,
Constraint PK_PlaceID_HISPlace PRIMARY KEY CLUSTERED (PlaceID)
);

CREATE TABLE HISPlannedServiceAssessment (
PlannedServiceAssessmentID INT IDENTITY(1,1) NOT NULL,
PlanServiceID INT  NOT NULL,
AssessmentSuggestedServiceID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PlannedServiceAssessmentID_HISPlannedServiceAssessment PRIMARY KEY CLUSTERED (PlannedServiceAssessmentID)
);

CREATE TABLE HISPremiumPayment (
PremiumPaymentID INT IDENTITY(1,1) NOT NULL,
PremiumPaymentBatchID INT  NOT NULL,
AssignedNumber VARCHAR(80)  NOT NULL,
CaseNo INT  NULL,
LastName VARCHAR(50)  NOT NULL,
SecID VARCHAR(80)  NOT NULL,
InsurancePolicyNo VARCHAR(50)  NOT NULL,
TCN VARCHAR(15)  NOT NULL,
AmountPaid VARCHAR(8)  NOT NULL,
AmountBilled VARCHAR(8)  NULL,
FromDate DATETIME  NOT NULL,
ToDate DATETIME  NULL,
ConsolidatedInvoiceNo VARCHAR(50)  NULL,
Constraint PK_PremiumPaymentID_HISPremiumPayment PRIMARY KEY CLUSTERED (PremiumPaymentID)
);

CREATE TABLE HISPremiumPaymentAdjustment (
PremiumPaymentAdjustmentID INT IDENTITY(1,1) NOT NULL,
PremiumPaymentID INT  NOT NULL,
AdjustmentAmount VARCHAR(8)  NOT NULL,
ReasonCode VARCHAR(2)  NOT NULL,
Constraint PK_PremiumPaymentAdjustmentID_HISPremiumPaymentAdjustment PRIMARY KEY CLUSTERED (PremiumPaymentAdjustmentID)
);

CREATE TABLE HISPremiumPaymentBatch (
PremiumPaymentBatchID INT IDENTITY(1,1) NOT NULL,
TransactionHandleCode VARCHAR(1)  NULL,
Amount VARCHAR(8)  NULL,
CreditDebit VARCHAR(1)  NULL,
PaymentMethodCode VARCHAR(3)  NULL,
OriginatingCompanyID VARCHAR(10)  NULL,
PaymentDate DATETIME  NULL,
PayorID INT  NULL,
FileName VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
FileStatus VARCHAR(100)  NULL,
Active BIT  NOT NULL,
Constraint PK_PremiumPaymentBatchID_HISPremiumPaymentBatch PRIMARY KEY CLUSTERED (PremiumPaymentBatchID)
);

CREATE TABLE HISPushConfigTracker (
HISPushConfigTrackerID INT IDENTITY(1,1) NOT NULL,
PlanServiceID INT  NOT NULL,
AuthServiceID INT  NOT NULL,
PushConfigID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Units NUMERIC(19,4)  NULL,
MaxAmount NUMERIC(19,2)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Constraint PK_HISPushConfigTrackerID_HISPushConfigTracker PRIMARY KEY CLUSTERED (HISPushConfigTrackerID)
);

CREATE TABLE HISRECURRINGENROLLMENT (
RecurringEnrollID INT IDENTITY(1,1) NOT NULL,
EnrollID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Disposition VARCHAR(100)  NOT NULL,
DispositionDate DATETIME  NOT NULL,
Generic1 VARCHAR(100)  NULL,
Generic2 VARCHAR(100)  NULL,
Generic3 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
Constraint PK_RecurringEnrollID_HISRECURRINGENROLLMENT PRIMARY KEY CLUSTERED (RecurringEnrollID)
);

CREATE TABLE HISReferral (
ReferralID INT IDENTITY(1,1) NOT NULL,
EntityID INT  NOT NULL,
EntityName VARCHAR(20)  NOT NULL,
VendorID VARCHAR(200)  NOT NULL,
ReferralDate DATETIME  NOT NULL,
MemberID INT  NOT NULL,
Comment VARCHAR(MAX)  NULL,
ExcludeFromReport BIT  NOT NULL,
IsExternal BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReferralID_HISReferral PRIMARY KEY CLUSTERED (ReferralID)
);

CREATE TABLE HISReferralService (
ReferralServiceID INT IDENTITY(1,1) NOT NULL,
ReferralID INT  NOT NULL,
VServiceID VARCHAR(200)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReferralServiceID_HISReferralService PRIMARY KEY CLUSTERED (ReferralServiceID)
);

CREATE TABLE HISRule (
RuleID INT IDENTITY(1,1) NOT NULL,
RulePolicyID INT  NOT NULL,
RuleName VARCHAR(100)  NOT NULL,
Description VARCHAR(1000)  NULL,
Constraint PK_RuleID_HISRule PRIMARY KEY CLUSTERED (RuleID)
);

CREATE TABLE HISRuleParameter (
RuleParameterID INT  NOT NULL,
RuleID INT  NOT NULL,
ParameterName VARCHAR(200)  NOT NULL,
ParameterValue VARCHAR(200)  NULL,
DefaultValue VARCHAR(200)  NULL,
Description VARCHAR(200)  NULL
);

CREATE TABLE HISRulePolicy (
RulePolicyID INT IDENTITY(1,1) NOT NULL,
PolicyName VARCHAR(50)  NOT NULL,
PolicyVersion VARCHAR(50)  NULL,
Description VARCHAR(1000)  NULL,
OrgName VARCHAR(200)  NULL,
Constraint PK_RulePolicyID_HISRulePolicy PRIMARY KEY CLUSTERED (RulePolicyID)
);

CREATE TABLE HISScreenQuestionCondition (
ScreenQuestionConditionID INT IDENTITY(1,1) NOT NULL,
SourceScaleID INT  NOT NULL,
TriggerScaleID INT  NOT NULL,
Value VARCHAR(400)  NOT NULL,
Action VARCHAR(15)  NULL,
ACTIVE INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Ranking INT  NULL,
Constraint PK_ScreenQuestionConditionID_HISScreenQuestionCondition PRIMARY KEY CLUSTERED (ScreenQuestionConditionID)
);

CREATE TABLE HISServiceArea (
ServiceAreaID INT IDENTITY(1,1) NOT NULL,
Unrestricted BIT  NOT NULL,
State VARCHAR(MAX)  NULL,
Region VARCHAR(MAX)  NULL,
County VARCHAR(MAX)  NULL,
City VARCHAR(MAX)  NULL,
ZipCode VARCHAR(MAX)  NULL,
ChapterEntityID INT  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServiceAreaID_HISServiceArea PRIMARY KEY CLUSTERED (ServiceAreaID)
);

CREATE TABLE HISServiceCodeTaxonomy (
ServiceCodeTaxonomyID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
TaxonomyID INT  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServiceCodeTaxonomyID_HISServiceCodeTaxonomy PRIMARY KEY CLUSTERED (ServiceCodeTaxonomyID)
);

CREATE TABLE HISServiceSchedule (
ServiceScheduleID INT IDENTITY(1,1) NOT NULL,
EntityID INT  NOT NULL,
EntityName VARCHAR(255)  NOT NULL,
AllocationType VARCHAR(100)  NOT NULL,
Frequency INT  NOT NULL,
UnitsPerVisit NUMERIC(19,2)  NOT NULL,
NumberOfVisits INT  NULL,
TotalNumberOfVisits INT  NULL,
AmountPerVisit NUMERIC(19,4)  NOT NULL,
ServiceScheduleSummary VARCHAR(MAX)  NULL,
UnitsAllocated INT  NOT NULL,
AmountAllocated NUMERIC(19,4)  NOT NULL,
Comment VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
CopiedFromServiceScheduleID INT  NULL,
Constraint PK_ServiceScheduleID_HISServiceSchedule PRIMARY KEY CLUSTERED (ServiceScheduleID)
);

CREATE TABLE HISTaxonomy (
TaxonomyID INT IDENTITY(1,1) NOT NULL,
ParentTaxonomyID INT  NULL,
Code VARCHAR(255)  NOT NULL,
Name VARCHAR(255)  NOT NULL,
Definition VARCHAR(3000)  NOT NULL,
Facet VARCHAR(100)  NULL,
Comments VARCHAR(1000)  NOT NULL,
BibliographicReference VARCHAR(2000)  NOT NULL,
DateCreated DATETIME  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_TaxonomyID_HISTaxonomy PRIMARY KEY CLUSTERED (TaxonomyID)
);

CREATE TABLE HISTaxonomyExternalTerm (
TaxonomyExternalTermID INT IDENTITY(1,1) NOT NULL,
TaxonomyID INT  NOT NULL,
System VARCHAR(100)  NOT NULL,
ExternalCode VARCHAR(100)  NOT NULL,
Name VARCHAR(255)  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_TaxonomyExternalTermID_HISTaxonomyExternalTerm PRIMARY KEY CLUSTERED (TaxonomyExternalTermID)
);

CREATE TABLE HISTaxonomyOldCode (
TaxonomyOldCodeID INT IDENTITY(1,1) NOT NULL,
TaxonomyID INT  NOT NULL,
OldCode VARCHAR(255)  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_TaxonomyOldCodeID_HISTaxonomyOldCode PRIMARY KEY CLUSTERED (TaxonomyOldCodeID)
);

CREATE TABLE HISTaxonomyRelatedConcept (
TaxonomyRelatedConceptID INT IDENTITY(1,1) NOT NULL,
TaxonomyID INT  NOT NULL,
RelatedConcept VARCHAR(MAX)  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_TaxonomyRelatedConceptID_HISTaxonomyRelatedConcept PRIMARY KEY CLUSTERED (TaxonomyRelatedConceptID)
);

CREATE TABLE HISTaxonomySeeAlsoCode (
TaxonomySeeAlsoCodeID INT IDENTITY(1,1) NOT NULL,
TaxonomyID INT  NOT NULL,
SeeAlsoTaxonomyID INT  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_TaxonomySeeAlsoCodeID_HISTaxonomySeeAlsoCode PRIMARY KEY CLUSTERED (TaxonomySeeAlsoCodeID)
);

CREATE TABLE HISTaxonomyUseReference (
TaxonomyUseReferenceID INT IDENTITY(1,1) NOT NULL,
TaxonomyID INT  NOT NULL,
UseReference VARCHAR(MAX)  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_TaxonomyUseReferenceID_HISTaxonomyUseReference PRIMARY KEY CLUSTERED (TaxonomyUseReferenceID)
);

CREATE TABLE HISTimer (
TimerID INT IDENTITY(1,1) NOT NULL,
StartTime DATETIME  NULL,
EndTime DATETIME  NULL,
RecordSource VARCHAR(50)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
MemberID INT  NOT NULL,
Constraint PK_TimerID_HISTimer PRIMARY KEY CLUSTERED (TimerID)
);

CREATE TABLE HISVendorDirectory (
VendorDirectoryID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
PublishDirectory BIT  NULL,
PublishWebsite BIT  NULL,
ShortDescription VARCHAR(MAX)  NULL,
LongDescription VARCHAR(MAX)  NULL,
PrivateDescription VARCHAR(MAX)  NULL,
ImportNotes VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
WRCPopulationServed VARCHAR(100)  NULL,
Constraint PK_VendorDirectoryID_HISVendorDirectory PRIMARY KEY CLUSTERED (VendorDirectoryID)
);

CREATE TABLE HISWordMergeConfigPackage (
WordMergeConfigPackageID INT IDENTITY(1,1) NOT NULL,
WordMergeTemplateID INT  NOT NULL,
PackageID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_WordMergeConfigPackageID_HISWordMergeConfigPackage PRIMARY KEY CLUSTERED (WordMergeConfigPackageID)
);

CREATE TABLE ICAPDomain (
ICAPDomainID INT IDENTITY(1,1) NOT NULL,
AgeYear INT  NULL,
AgeMonth VARCHAR(25)  NULL,
SocialCommunication INT  NULL,
PersonalLivingSkill INT  NULL,
CommunityLivingSkill INT  NULL,
BroadIndependence INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ICAPDomainID_ICAPDomain PRIMARY KEY CLUSTERED (ICAPDomainID)
);

CREATE TABLE Incident (
IncidentID INT IDENTITY(1,1) NOT NULL,
FundCode VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
StartTime DATETIME  NULL,
EndTime DATETIME  NULL,
Type VARCHAR(100)  NULL,
Category VARCHAR(100)  NULL,
Location VARCHAR(100)  NULL,
LocationOther VARCHAR(100)  NULL,
Priority VARCHAR(100)  NULL,
DueDate DATETIME  NULL,
CompletionDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
Result VARCHAR(100)  NULL,
Description VARCHAR(MAX)  NULL,
Conclusion VARCHAR(MAX)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(MAX)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
MemberID INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Immediacy VARCHAR(100)  NULL,
DueTime DATETIME  NULL,
Confidential BIT  NULL,
FirstContactDate DATETIME  NULL,
FirstContactTime DATETIME  NULL,
ActualContactDate DATETIME  NULL,
ActualContactTime DATETIME  NULL,
Agency VARCHAR(75)  NULL,
Street VARCHAR(100)  NULL,
Street2 VARCHAR(100)  NULL,
City VARCHAR(100)  NULL,
State VARCHAR(100)  NULL,
Zip VARCHAR(10)  NULL,
Phone VARCHAR(18)  NULL,
County VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
AbuseResult VARCHAR(MAX)  NULL,
IncidentNature VARCHAR(100)  NULL,
LawInvolvement VARCHAR(100)  NULL,
LawAgencyVendorID INT  NULL,
LawNotifiedDate DATETIME  NULL,
RiskToInvestigator VARCHAR(100)  NULL,
ExtensionRequested VARCHAR(100)  NULL,
ExtensionDate DATETIME  NULL,
ExtensionComment VARCHAR(1000)  NULL,
LegalAction BIT  NULL,
IncidentQueue VARCHAR(100)  NULL,
Comment VARCHAR(4000)  NULL,
ReportDate DATETIME  NULL,
ReportTime DATETIME  NULL,
ClosureReason VARCHAR(100)  NULL,
OngoingSrvsStatus VARCHAR(100)  NULL,
OngoingSrvsStartDate DATETIME  NULL,
OngoingSrvsEndDate DATETIME  NULL,
NiffiCriteria VARCHAR(MAX)  NULL,
NiffiComments VARCHAR(1000)  NULL,
Jurisdiction VARCHAR(100)  NULL,
DocsAttached BIT  NULL,
PrimaryIncident BIT  NULL,
SecondaryMemberID INT  NULL,
OngoingSrvComment VARCHAR(MAX)  NULL,
OngoingSrvRequestTermDate DATETIME  NULL,
NiffiRequested VARCHAR(100)  NULL,
NiffiRequestedDate DATETIME  NULL,
NiffiRequestedComments VARCHAR(MAX)  NULL,
CreationDateTime DATETIME  NOT NULL,
ReportName VARCHAR(50)  NULL,
ReportNumber VARCHAR(20)  NULL,
SendingDocs VARCHAR(100)  NULL,
CaseIdentifier VARCHAR(16)  NULL,
ProviderID INT  NULL,
ReportType2 VARCHAR(100)  NULL,
CrossReporting VARCHAR(MAX)  NULL,
F2FWaiverRequest VARCHAR(100)  NULL,
F2FWaiverRequestDate DATETIME  NULL,
F2FWaiverRequestComment VARCHAR(4000)  NULL,
DateIncidentAssigned DATETIME  NULL,
AddressValid BIT  NULL,
AddressValidDate DATETIME  NULL,
TertiaryMemberID INT  NULL,
InquiryResolutionDate DATETIME  NULL,
InquiryResolutionTime DATETIME  NULL,
NAMRSID VARCHAR(32)  NULL,
GenericWorker1 INT  NULL,
GenericWorker2 INT  NULL,
GenericWorker3 INT  NULL,
DateCrossReport DATETIME  NULL,
FacilityID INT  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
FacilityReportDate DATETIME  NULL,
FacilityReportTime DATETIME  NULL,
AgencyID INT  NULL,
ProgramID INT  NULL,
SecondaryDueDate DATETIME  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
Constraint PK_IncidentID_Incident PRIMARY KEY CLUSTERED (IncidentID)
);

CREATE TABLE IncidentAssociation (
IncidentAssociationID INT IDENTITY(1,1) NOT NULL,
IncidentID INT  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
EntityID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_IncidentAssociationID_IncidentAssociation PRIMARY KEY CLUSTERED (IncidentAssociationID)
);

CREATE TABLE IncidentDetReview (
IncidentDetReviewID INT IDENTITY(1,1) NOT NULL,
Assessment VARCHAR(50)  NULL,
Scale VARCHAR(255)  NULL,
Item VARCHAR(MAX)  NULL,
Score NUMERIC(10,0)  NULL,
Comments VARCHAR(MAX)  NULL,
YN INT  NULL,
LookupValue VARCHAR(50)  NULL,
ScaleID INT  NOT NULL,
QuestionID VARCHAR(15)  NULL,
SecID VARCHAR(500)  NULL,
AssessID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_IncidentDetReviewID_IncidentDetReview PRIMARY KEY CLUSTERED (IncidentDetReviewID)
);

CREATE TABLE IncidentRecipient (
IncidentRecipientID INT IDENTITY(1,1) NOT NULL,
IncidentID INT  NOT NULL,
MemberID INT  NOT NULL,
NotifyDate DATETIME  NOT NULL,
ViewDate DATETIME  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_IncidentRecipientID_IncidentRecipient PRIMARY KEY CLUSTERED (IncidentRecipientID)
);

CREATE TABLE IncidentReview (
AssessID INT IDENTITY(1,1) NOT NULL,
Assessment VARCHAR(50)  NULL,
Review VARCHAR(100)  NULL,
NumDaysTilNext INT  NULL,
Score1 NUMERIC(10,0)  NULL,
Score2 NUMERIC(10,0)  NULL,
Rater INT  NULL,
Status VARCHAR(100)  NULL,
ReviewDate DATETIME  NULL,
ApprovedBy INT  NULL,
ApproveDate DATETIME  NULL,
ApproveUser VARCHAR(10)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
TriggerID INT  NULL,
TriggerPage VARCHAR(20)  NULL,
IncidentID INT  NOT NULL,
ScreenDesignID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
ParticipantID INT  NULL,
InfoPathFormStatus INT  NULL,
ExpirationDate DATETIME  NULL,
Expired BIT  NULL,
InfoPathFormUserStamp INT  NULL,
InfoPathFormCheckOutDate DATETIME  NULL,
ShowConsumer BIT  NULL,
Constraint PK_AssessID_IncidentReview PRIMARY KEY CLUSTERED (AssessID)
);

CREATE TABLE INCOMERANGES (
INCOMERANGEID NUMERIC(10,0)  NOT NULL,
LOWINCOME NUMERIC(19,4)  NULL,
HIGHINCOME NUMERIC(19,4)  NULL,
PERCENTOFTOTAL VARCHAR(8)  NULL,
MAXAMOUNT NUMERIC(19,4)  NULL,
PERCENTOFINCOME VARCHAR(8)  NULL,
FAMILYSIZE INT  NULL
);

CREATE TABLE IndexCode (
IndexCodeID INT IDENTITY(1,1) NOT NULL,
IndexCode VARCHAR(10)  NOT NULL,
IndexDescription VARCHAR(100)  NULL,
SecondaryCode VARCHAR(100)  NULL,
AccountCode VARCHAR(100)  NULL,
Active BIT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Agencycode VARCHAR(30)  NULL,
Organization VARCHAR(30)  NULL,
Constraint PK_IndexCodeID_IndexCode PRIMARY KEY CLUSTERED (IndexCodeID)
);

CREATE TABLE INQDOCDETAILS (
INQDOCID INT  NOT NULL,
SCALE VARCHAR(255)  NULL,
SCORE INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
ITEM VARCHAR(MAX)  NULL,
SCALEID INT  NULL,
LOOKUPVALUE VARCHAR(50)  NULL,
INQDOCDETAILID INT IDENTITY(1,1) NOT NULL,
APPTYPE VARCHAR(5)  NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
SecID VARCHAR(500)  NULL,
QuestionID VARCHAR(15)  NULL,
Constraint PK_INQDOCDETAILID_INQDOCDETAILS PRIMARY KEY CLUSTERED (INQDOCDETAILID)
);

CREATE TABLE INQDocumentATION (
INQDOCID INT IDENTITY(1,1) NOT NULL,
INQUIRYID INT  NULL,
STATUS VARCHAR(100)  NULL,
DOCBY INT  NULL,
DOCDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
DOCSTARTTIME DATETIME  NULL,
DOCENDTIME DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
ScreenDesignID INT  NOT NULL,
UserStamp INT  NOT NULL,
ParticipantID INT  NULL,
InfoPathFormStatus INT  NULL,
ShowConsumer BIT  NULL,
FundCode VARCHAR(25)  NULL,
ExpirationDate DATETIME  NULL,
Expired BIT  NULL,
InfoPathFormUserStamp INT  NULL,
InfoPathFormCheckOutDate DATETIME  NULL,
Agency INT  NULL,
ServiceProvider INT  NULL,
Program INT  NULL,
Constraint PK_INQDOCID_INQDocumentATION PRIMARY KEY CLUSTERED (INQDOCID)
);

CREATE TABLE INQUIRY (
INQUIRYID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NULL,
PROVIDERID INT  NULL,
INQDATE DATETIME  NULL,
INQTIME DATETIME  NULL,
CALLER VARCHAR(50)  NULL,
RECEIVEDBY INT  NULL,
INQDESCRIPTION VARCHAR(MAX)  NULL,
INQTYPE VARCHAR(100)  NULL,
STATUS VARCHAR(100)  NULL,
COMPLETEDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ASSIGNEDTO INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
INQGENERIC1 VARCHAR(100)  NULL,
INQGENERIC2 VARCHAR(100)  NULL,
INQGENERIC3 VARCHAR(100)  NULL,
INQGENERIC4 VARCHAR(MAX)  NULL,
CLASTNAME VARCHAR(30)  NULL,
CFIRSTNAME VARCHAR(30)  NULL,
CSTREET VARCHAR(100)  NULL,
CSTREET2 VARCHAR(100)  NULL,
CCITY VARCHAR(30)  NULL,
CSTATE VARCHAR(100)  NULL,
CZIP VARCHAR(10)  NULL,
CPHONE VARCHAR(50)  NULL,
RELATIONSHIP VARCHAR(50)  NULL,
RESOURCEID INT  NULL,
HOME VARCHAR(75)  NULL,
GENERICTEXT1 VARCHAR(75)  NULL,
SECID VARCHAR(15)  NULL,
TERID VARCHAR(50)  NULL,
FAMILYID VARCHAR(20)  NULL,
IMPORTFROM VARCHAR(50)  NULL,
AppType VARCHAR(5)  NULL,
Category VARCHAR(100)  NULL,
Disposition VARCHAR(100)  NULL,
ImageNumber VARCHAR(20)  NULL,
Resolution VARCHAR(MAX)  NULL,
ResolutionDate DATETIME  NULL,
ResolutionTime DATETIME  NULL,
TrackingNumber VARCHAR(20)  NULL,
Type VARCHAR(100)  NULL,
VendorNO VARCHAR(50)  NULL,
Notes VARCHAR(MAX)  NULL,
Queue VARCHAR(100)  NULL,
InquirySource VARCHAR(100)  NULL,
AuthorizedRep VARCHAR(100)  NULL,
DateReceived DATETIME  NULL,
DateSent DATETIME  NULL,
FEIN VARCHAR(10)  NULL,
UserStamp INT  NOT NULL,
LASTNAME VARCHAR(30)  NULL,
FIRSTNAME VARCHAR(30)  NULL,
AGENCY VARCHAR(75)  NULL,
STREET VARCHAR(100)  NULL,
STREET2 VARCHAR(100)  NULL,
CITY VARCHAR(30)  NULL,
STATE VARCHAR(100)  NULL,
ZIP VARCHAR(10)  NULL,
PHONE VARCHAR(18)  NULL,
EXTENSION VARCHAR(7)  NULL,
DOB DATETIME  NULL,
SSN VARCHAR(15)  NULL,
SIN VARCHAR(11)  NULL,
Generic1 VARCHAR(100)  NULL,
Generic2 VARCHAR(100)  NULL,
Generic3 VARCHAR(100)  NULL,
Generic4 VARCHAR(100)  NULL,
Gender VARCHAR(100)  NULL,
Ethnicity VARCHAR(100)  NULL,
Race VARCHAR(MAX)  NULL,
Education VARCHAR(100)  NULL,
Age VARCHAR(8)  NULL,
AddressValid BIT  NULL,
EntryDate DATETIME  NULL,
EntryTime DATETIME  NULL,
ReportNumber VARCHAR(20)  NULL,
ReportName VARCHAR(50)  NULL,
Confidential BIT  NULL,
IncidentDate DATETIME  NULL,
IncidentTime DATETIME  NULL,
IncidentLocation VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
AbuseResult VARCHAR(MAX)  NULL,
IncidentNature VARCHAR(100)  NULL,
LawInvolvement VARCHAR(100)  NULL,
LawAgencyVendorID INT  NULL,
LawNotifiedDate DATETIME  NULL,
RiskToInvestigator VARCHAR(100)  NULL,
CrossReporting VARCHAR(MAX)  NULL,
ScreeningPriority VARCHAR(100)  NULL,
ScreeningMemberID INT  NULL,
Immediacy VARCHAR(100)  NULL,
IncidentQueue VARCHAR(100)  NULL,
Comment VARCHAR(4000)  NULL,
Verbal BIT  NULL,
RapeKitNeeded VARCHAR(100)  NULL,
ADRCActivities VARCHAR(MAX)  NULL,
FollowUpRequired BIT  NULL,
UnmetNeed BIT  NULL,
ReferredConsumer VARCHAR(100)  NULL,
PriorSRSInvolvement VARCHAR(MAX)  NULL,
ScreeningDate DATETIME  NULL,
ScreeningTime DATETIME  NULL,
NotifyReporter VARCHAR(100)  NULL,
NiffiCriteria VARCHAR(MAX)  NULL,
NiffiComments VARCHAR(1000)  NULL,
Jurisdiction VARCHAR(100)  NULL,
DateCrossReport DATETIME  NULL,
ReportMadeTo VARCHAR(100)  NULL,
DocsAttached BIT  NULL,
SendingDocs VARCHAR(100)  NULL,
ReportType2 VARCHAR(100)  NULL,
InqRouting BIT  NULL,
InqRoutingQ1 VARCHAR(100)  NULL,
InqRoutingQ2 VARCHAR(100)  NULL,
InqRoutingQ3 VARCHAR(100)  NULL,
InqRoutingQ4 VARCHAR(100)  NULL,
InqRoutingQ5 VARCHAR(100)  NULL,
InqRoutingQ6 VARCHAR(100)  NULL,
RoutingID VARCHAR(16)  NULL,
AddressValidDate DATETIME  NULL,
AgencyID INT  NULL,
ProgramID INT  NULL,
GenericWorker1 INT  NULL,
GenericWorker2 INT  NULL,
GenericWorker3 INT  NULL,
DueDate DATETIME  NULL,
FacilityID INT  NULL,
FacilityReportDate DATETIME  NULL,
FacilityReportTime DATETIME  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
Constraint PK_INQUIRYID_INQUIRY PRIMARY KEY CLUSTERED (INQUIRYID)
);

CREATE TABLE InquiryFormInstanceLink (
InquiryFormInstanceLinkID INT IDENTITY(1,1) NOT NULL,
InquiryID INT  NOT NULL,
FormInstanceID VARCHAR(50)  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
CreatedOn DATETIME  NOT NULL,
CreatedBy INT  NOT NULL,
Constraint PK_InquiryFormInstanceLinkID_InquiryFormInstanceLink PRIMARY KEY CLUSTERED (InquiryFormInstanceLinkID)
);

CREATE TABLE INSURANCE (
InsuranceID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
PAYORID INT  NOT NULL,
EFFECTIVEDATE DATETIME  NOT NULL,
INSUREDNAME VARCHAR(50)  NULL,
INSUREDPHONE VARCHAR(16)  NULL,
POLICYNUMBER VARCHAR(25)  NULL,
GROUPNUMBER VARCHAR(50)  NULL,
MEMBERNUMBER VARCHAR(25)  NULL,
ACTIVE BIT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ENDDATE DATETIME  NULL,
PAYERORDER INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
RELATIONSHIP VARCHAR(50)  NULL,
INSUREDSTREET VARCHAR(100)  NULL,
INSUREDCITY VARCHAR(30)  NULL,
INSUREDSTATE VARCHAR(100)  NULL,
INSUREDZIP VARCHAR(10)  NULL,
INSUREDGENDER VARCHAR(10)  NULL,
INSUREDDOB DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
ChargeAtVisit INT  NULL,
UserStamp INT  NOT NULL,
LinkedAddress BIT  NULL,
Constraint PK_InsuranceID_INSURANCE PRIMARY KEY CLUSTERED (InsuranceID)
);

CREATE TABLE InterfaceImportSetup (
InterfaceImportSetupID INT IDENTITY(1,1) NOT NULL,
ImportType VARCHAR(100)  NOT NULL,
SetFundCodeTo VARCHAR(25)  NULL,
SetStatusTo VARCHAR(100)  NULL,
AllowableFundcode VARCHAR(MAX)  NULL,
AllowableStatus VARCHAR(MAX)  NULL,
AutoCalculateUnits BIT  NULL,
AutoCalculateTotalCost BIT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
InsertOpenCloseEnrollments BIT  NULL,
Constraint PK_InterfaceImportSetupID_InterfaceImportSetup PRIMARY KEY CLUSTERED (InterfaceImportSetupID)
);

CREATE TABLE InterfaceImportSetupFields (
InterfaceImportSetupFieldsID INT IDENTITY(1,1) NOT NULL,
InterfaceImportSetupID INT  NOT NULL,
FieldName VARCHAR(255)  NOT NULL,
RequiredYN BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_InterfaceImportSetupFieldsID_InterfaceImportSetupFields PRIMARY KEY CLUSTERED (InterfaceImportSetupFieldsID)
);

CREATE TABLE Intervention (
InterventionID INT IDENTITY(1,1) NOT NULL,
ObjectiveID INT  NULL,
NeedID INT  NULL,
InterventionCodeID INT  NOT NULL,
InterventionText VARCHAR(MAX)  NULL,
InterventionType VARCHAR(50)  NULL,
RevisionDate DATETIME  NULL,
CompletionDate DATETIME  NULL,
StartDate DATETIME  NULL,
TargetDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
Comments VARCHAR(MAX)  NULL,
Responsibility VARCHAR(50)  NULL,
ScaleID INT  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(100)  NULL,
GenericText1 VARCHAR(255)  NULL,
GenericText2 VARCHAR(255)  NULL,
GenericText3 VARCHAR(255)  NULL,
GenericText4 VARCHAR(255)  NULL,
GenericMemo1 VARCHAR(MAX)  NULL,
GenericMemo2 VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Progress VARCHAR(100)  NULL,
Constraint PK_InterventionID_Intervention PRIMARY KEY CLUSTERED (InterventionID)
);

CREATE TABLE InterventionCode (
InterventionCodeID INT IDENTITY(1,1) NOT NULL,
Intervention VARCHAR(MAX)  NULL,
RequiresNamePrefix BIT  NOT NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Constraint PK_InterventionCodeID_InterventionCode PRIMARY KEY CLUSTERED (InterventionCodeID)
);

CREATE TABLE InterventionCodeCategory (
InterventionCodeCategoryID INT IDENTITY(1,1) NOT NULL,
InterventionCodeID INT  NOT NULL,
Category VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_InterventionCodeCategoryID_InterventionCodeCategory PRIMARY KEY CLUSTERED (InterventionCodeCategoryID)
);

CREATE TABLE Inventory (
InventoryID INT IDENTITY(1,1) NOT NULL,
Cost NUMERIC(19,4)  NULL,
Category VARCHAR(100)  NULL,
Subcategory VARCHAR(100)  NULL,
Condition VARCHAR(100)  NULL,
SerialNumber VARCHAR(100)  NULL,
Description VARCHAR(1000)  NULL,
UnitName VARCHAR(100)  NULL,
Contact INT  NULL,
OfficeDelDate DATETIME  NULL,
OfficeRecBy INT  NULL,
CaseNo INT  NULL,
ConsumerDelDate DATETIME  NULL,
ConsumerDelBy INT  NULL,
Disposition VARCHAR(100)  NULL,
StatusDate DATETIME  NULL,
RecoveryBy INT  NULL,
Location INT  NULL,
Comment VARCHAR(1000)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
Userstamp INT  NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_InventoryID_Inventory PRIMARY KEY CLUSTERED (InventoryID)
);

CREATE TABLE ISComboCodeLink (
ISComboCodeLinkID INT IDENTITY(1,1) NOT NULL,
PrimaryISComboCodeID INT  NULL,
MatchISComboCodeID INT  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
Priority INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ISComboCodeLinkID_ISComboCodeLink PRIMARY KEY CLUSTERED (ISComboCodeLinkID)
);

CREATE TABLE ISComboCodes (
ISComboCodeID INT IDENTITY(1,1) NOT NULL,
SELECTR INT  NULL,
STATECODE VARCHAR(5)  NULL,
Active BIT  NOT NULL,
FundCode VARCHAR(25)  NULL,
SOStateCode VARCHAR(50)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
ReportOrder INT  NULL,
PayorID INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
ISOPriority INT  NULL,
IndexCodeID INT  NOT NULL,
SubObjectCodeID INT  NOT NULL,
FIPSCODE VARCHAR(100)  NULL,
MMIS BIT  NOT NULL,
ExportToGL BIT  NOT NULL,
DebitAccount VARCHAR(50)  NULL,
CreditAccount VARCHAR(50)  NULL,
Constraint PK_ISComboCodeID_ISComboCodes PRIMARY KEY CLUSTERED (ISComboCodeID)
);

CREATE TABLE ISOBudget (
ISOBudgetID INT IDENTITY(1,1) NOT NULL,
ISComboCodeID INT  NOT NULL,
FiscalYear INT  NOT NULL,
BudgetType VARCHAR(100)  NULL,
BudgetAmount VARCHAR(8)  NULL,
BalanceForward VARCHAR(8)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
LevelOfEnforcement VARCHAR(100)  NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
AmountEncumbered VARCHAR(8)  NULL,
RemainingBalance VARCHAR(8)  NULL,
Constraint PK_ISOBudgetID_ISOBudget PRIMARY KEY CLUSTERED (ISOBudgetID)
);

CREATE TABLE Jacket (
JacketID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
OpenID INT  NULL,
OpenDate DATETIME  NOT NULL,
JacketNo VARCHAR(100)  NULL,
Type VARCHAR(100)  NULL,
Worker INT  NULL,
Status VARCHAR(100)  NULL,
DetentionStatus VARCHAR(500)  NULL,
LegalStatus VARCHAR(100)  NULL,
CourtProcStatus VARCHAR(100)  NULL,
CourtDecision VARCHAR(100)  NULL,
CourtDecisionDate DATETIME  NULL,
Judge1 VARCHAR(100)  NULL,
Judge2 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericText1 VARCHAR(2000)  NULL,
GenericText2 VARCHAR(2000)  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
LegalStatusDate DATETIME  NULL,
Constraint PK_JacketID_Jacket PRIMARY KEY CLUSTERED (JacketID)
);

CREATE TABLE JUVCOURTREVIEW (
JUVCID NUMERIC(10,0)  NOT NULL,
CASENO INT  NOT NULL,
REVIEW VARCHAR(100)  NULL,
NUMDAYSTILNEXT INT  NULL,
NUMCRIMINALCHARGES INT  NULL,
NUMDIVERTEDCRIMINAL INT  NULL,
NUMPETCHINS INT  NULL,
NUMDIVCHINS INT  NULL,
NUMPROBVIOLATIONS INT  NULL,
TXORDERED INT  NULL,
TxConditionof VARCHAR(100)  NULL,
NUMFELONIES INT  NULL,
NUMARRESTS INT  NULL,
NUMMISDEMEANORS INT  NULL,
NUMLEGALACTIVITIES INT  NULL,
REVIEWDATE DATETIME  NULL,
CURRENTREVIEW INT  NULL,
DATETIMESTAMP DATETIME  NULL,
STATUS VARCHAR(100)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE LegacyAuthService (
ActualID INT  NOT NULL,
LegacyID VARCHAR(100)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE LegacyAuthServicePayment (
ActualID INT  NOT NULL,
LegacyID VARCHAR(100)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE LinkedFundCodes (
LinkedFundCodeID INT IDENTITY(1,1) NOT NULL,
ParentFundCode VARCHAR(25)  NOT NULL,
ChildFundCode VARCHAR(25)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
AllowConcurrency BIT  NULL,
Constraint PK_LinkedFundCodeID_LinkedFundCodes PRIMARY KEY CLUSTERED (LinkedFundCodeID)
);

CREATE TABLE LinkLegacy (
LinkLegacyId INT  NOT NULL,
TableName VARCHAR(50)  NOT NULL,
LegacyId VARCHAR(50)  NOT NULL,
ActualId INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE LookupCodeSetup (
PrimaryLookupID INT  NOT NULL,
PrimaryLookupCode INT  NOT NULL,
SecondaryLookupID INT  NOT NULL,
SecondaryLookupCode INT  NOT NULL,
Active INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
LookupCodeSetupID INT IDENTITY(1,1) NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_LookupCodeSetupID_LookupCodeSetup PRIMARY KEY CLUSTERED (LookupCodeSetupID)
);

CREATE TABLE LOOKUPCODESMAST (
LOOKUPID INT  NOT NULL,
LOOKUPCODE INT  NOT NULL,
LOOKUPDESC VARCHAR(300)  NULL,
LOOKUPSECID VARCHAR(MAX)  NULL,
SELECTR INT  NULL,
ACTIVE INT  NULL,
SORTORDER INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
TwoPartReadOnly INT  NULL,
LookupCodesMastID INT IDENTITY(1,1) NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_LookupCodesMastID_LOOKUPCODESMAST PRIMARY KEY CLUSTERED (LookupCodesMastID)
);

CREATE TABLE LOOKUPIDNAMESMAST (
LOOKUPID INT IDENTITY(1,1) NOT NULL,
LOOKUPIDDESC VARCHAR(45)  NOT NULL,
LOOKUPEXPLAINED VARCHAR(175)  NULL,
FIELDSIZE INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
PackageID INT  NOT NULL,
SystemRequired BIT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_LOOKUPID_LOOKUPIDNAMESMAST PRIMARY KEY CLUSTERED (LOOKUPID)
);

CREATE TABLE MatchPercent (
MatchPercentID INT IDENTITY(1,1) NOT NULL,
FiscalYear INT  NOT NULL,
FundCode VARCHAR(25)  NOT NULL,
BudgetType VARCHAR(100)  NULL,
StateLocalPercent NUMERIC(19,2)  NULL,
FederalPercent NUMERIC(19,2)  NULL,
FundCodeBudget VARCHAR(8)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
FYAttribute1 VARCHAR(50)  NULL,
FYAttribute2 VARCHAR(50)  NULL,
Constraint PK_MatchPercentID_MatchPercent PRIMARY KEY CLUSTERED (MatchPercentID)
);

CREATE TABLE Mci_CountyScreenLookups (
Id INT IDENTITY(1,1) NOT NULL,
ScreenLookUp VARCHAR(70)  NOT NULL,
Code INT  NOT NULL,
Active INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
Constraint PK_Id_Mci_CountyScreenLookups PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE Mci_CountyScreenLookupsHistory (
HistoryID INT IDENTITY(1,1) NOT NULL,
Id INT  NULL,
ScreenLookUp VARCHAR(70)  NULL,
Code INT  NULL,
Active INT  NULL,
DateTimestamp DATETIME  NULL,
HDeleted BIT  NULL,
HDateTimeStamp DATETIME  NULL,
HAppName VARCHAR(128)  NULL,
Constraint PK_HistoryID_Mci_CountyScreenLookupsHistory PRIMARY KEY CLUSTERED (HistoryID)
);

CREATE TABLE Mci_MartialStatusScreenLookups (
Id INT IDENTITY(1,1) NOT NULL,
ScreenLookUp VARCHAR(70)  NOT NULL,
Code VARCHAR(10)  NOT NULL,
Active INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
Constraint PK_Id_Mci_MartialStatusScreenLookups PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE Mci_MartialStatusScreenLookupsHistory (
HistoryID INT IDENTITY(1,1) NOT NULL,
Id INT  NULL,
ScreenLookUp VARCHAR(70)  NULL,
Code VARCHAR(10)  NULL,
Active INT  NULL,
DateTimestamp DATETIME  NULL,
HDeleted BIT  NULL,
HDateTimeStamp DATETIME  NULL,
HAppName VARCHAR(128)  NULL,
Constraint PK_HistoryID_Mci_MartialStatusScreenLookupsHistory PRIMARY KEY CLUSTERED (HistoryID)
);

CREATE TABLE Mci_RaceScreenLookups (
Id INT IDENTITY(1,1) NOT NULL,
ScreenLookUp VARCHAR(70)  NOT NULL,
Code VARCHAR(10)  NOT NULL,
Active INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
Constraint PK_Id_Mci_RaceScreenLookups PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE Mci_RaceScreenLookupsHistory (
HistoryID INT IDENTITY(1,1) NOT NULL,
Id INT  NULL,
ScreenLookUp VARCHAR(70)  NULL,
Code VARCHAR(10)  NULL,
Active INT  NULL,
DateTimestamp DATETIME  NULL,
HDeleted BIT  NULL,
HDateTimeStamp DATETIME  NULL,
HAppName VARCHAR(128)  NULL,
Constraint PK_HistoryID_Mci_RaceScreenLookupsHistory PRIMARY KEY CLUSTERED (HistoryID)
);

CREATE TABLE Mci_StateScreenLookups (
Id INT IDENTITY(1,1) NOT NULL,
ScreenLookUp VARCHAR(70)  NOT NULL,
Code VARCHAR(10)  NOT NULL,
Active INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
Constraint PK_Id_Mci_StateScreenLookups PRIMARY KEY CLUSTERED (Id)
);

CREATE TABLE Mci_StateScreenLookupsHistory (
HistoryID INT IDENTITY(1,1) NOT NULL,
Id INT  NULL,
ScreenLookUp VARCHAR(70)  NULL,
Code VARCHAR(10)  NULL,
Active INT  NULL,
DateTimestamp DATETIME  NULL,
HDeleted BIT  NULL,
HDateTimeStamp DATETIME  NULL,
HAppName VARCHAR(128)  NULL,
Constraint PK_HistoryID_Mci_StateScreenLookupsHistory PRIMARY KEY CLUSTERED (HistoryID)
);

CREATE TABLE MEDICATIONREVIEW (
MEDICATIONREVIEWID INT IDENTITY(1,1) NOT NULL,
MEDICATION VARCHAR(100)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
DOSAGE VARCHAR(500)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
STATUS VARCHAR(100)  NULL,
MEDMANAGEMENTBY NUMERIC(10,0)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
FREQUENCY VARCHAR(50)  NULL,
ROUTEADMIN VARCHAR(50)  NULL,
MEDMANAGER VARCHAR(50)  NULL,
DISPENSE1 VARCHAR(100)  NULL,
DISPENSE2 VARCHAR(100)  NULL,
DISPENSE3 VARCHAR(100)  NULL,
DISPENSE4 VARCHAR(100)  NULL,
PHYSICIANPHONE VARCHAR(16)  NULL,
PHYSICIANSTREET VARCHAR(100)  NULL,
PHYSICIANCITY VARCHAR(30)  NULL,
PHYSICIANSTATE VARCHAR(100)  NULL,
PHYSICIANZIPCODE VARCHAR(10)  NULL,
ASPRESCRIBED VARCHAR(100)  NULL,
PRESCRIBEDBY VARCHAR(75)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
OpenID INT  NULL,
EnrollID INT  NULL,
ParentEntity VARCHAR(256)  NULL,
InfoPathFormUserStamp INT  NULL,
InfoPathFormCheckOutDate DATETIME  NULL,
InfoPathFormStatus VARCHAR(100)  NULL,
ChapterName VARCHAR(20)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(20)  NOT NULL,
PageEntityID INT  NOT NULL,
Gentext1 VARCHAR(100)  NULL,
Gentext2 VARCHAR(100)  NULL,
Gentext3 VARCHAR(100)  NULL,
Gentext4 VARCHAR(100)  NULL,
Gentext5 VARCHAR(100)  NULL,
ParticipantID INT  NULL,
FundCode VARCHAR(25)  NULL,
MedsObtained VARCHAR(100)  NULL,
MailOrder VARCHAR(100)  NULL,
Packaging VARCHAR(100)  NULL,
AssistanceType VARCHAR(100)  NULL,
MedicationAssistance VARCHAR(100)  NULL,
MedUnit VARCHAR(100)  NULL,
Strength VARCHAR(100)  NULL,
PRN BIT  NULL,
DispenseTime1 DATETIME  NULL,
DispenseTime2 DATETIME  NULL,
DispenseTime3 DATETIME  NULL,
DispenseTime4 DATETIME  NULL,
DispenseTime5 DATETIME  NULL,
DispenseTime6 DATETIME  NULL,
OtherMedication VARCHAR(100)  NULL,
doctorlastname VARCHAR(25)  NULL,
doctorfirstname VARCHAR(15)  NULL,
doctortitle VARCHAR(10)  NULL,
doctorsuffix VARCHAR(10)  NULL,
ndccode VARCHAR(100)  NULL,
duration VARCHAR(100)  NULL,
SendToEmar VARCHAR(100)  NULL,
ScheduleTime7 DATETIME  NULL,
ScheduleTime8 DATETIME  NULL,
ScheduleTime9 DATETIME  NULL,
ScheduleTime10 DATETIME  NULL,
ScheduleTime11 DATETIME  NULL,
ScheduleTime12 DATETIME  NULL,
Constraint PK_MEDICATIONREVIEWID_MEDICATIONREVIEW PRIMARY KEY CLUSTERED (MEDICATIONREVIEWID)
);

CREATE TABLE MEDICATIONS (
MEDICATION VARCHAR(100)  NOT NULL,
URL VARCHAR(255)  NULL,
NDCCode VARCHAR(100)  NULL,
Active BIT  NULL
);

CREATE TABLE MEETINGDATES (
TEAM VARCHAR(15)  NOT NULL,
MDATE DATETIME  NOT NULL,
LOCATION VARCHAR(50)  NULL,
MEETINGTYPE VARCHAR(25)  NULL,
MEETINGSTATUS VARCHAR(15)  NULL
);

CREATE TABLE MEETINGRELATEDPERSONS (
TEAM VARCHAR(15)  NOT NULL,
DATER DATETIME  NOT NULL,
TIME DATETIME  NOT NULL,
CASENO NUMERIC(10,0)  NOT NULL,
RELATEDID NUMERIC(10,0)  NOT NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE MEETINGTIMES (
TEAM VARCHAR(15)  NOT NULL,
MDATE DATETIME  NOT NULL,
TIME DATETIME  NOT NULL,
CASENO NUMERIC(10,0)  NULL,
REASONFORMEETING VARCHAR(25)  NULL,
NEXTMEETINGDATE DATETIME  NULL,
REMARKS VARCHAR(175)  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE MEMBERREVIEWS (
MEMBERREVIEWID INT IDENTITY(1,1) NOT NULL,
MEMBERID NUMERIC(10,0)  NULL,
ITEM VARCHAR(MAX)  NULL,
DUEDATE DATETIME  NULL,
REQUIRED INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
APPTYPE VARCHAR(5)  NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_MEMBERREVIEWID_MEMBERREVIEWS PRIMARY KEY CLUSTERED (MEMBERREVIEWID)
);

CREATE TABLE Menu (
MenuID INT IDENTITY(1,1) NOT NULL,
ParentMenuID INT  NULL,
Menu VARCHAR(255)  NOT NULL,
SortBy INT  NOT NULL,
MenuTypeID INT  NOT NULL,
AccessLevel INT  NOT NULL,
MenuCommandArgument VARCHAR(50)  NULL,
NavigateUrl VARCHAR(300)  NULL,
TargetPageName VARCHAR(255)  NULL,
LookId VARCHAR(50)  NULL,
LeftIcon VARCHAR(50)  NULL,
LeftIconHover VARCHAR(50)  NULL,
RightIcon VARCHAR(50)  NULL,
RightIconHover VARCHAR(50)  NULL,
AppendPageLabel BIT  NOT NULL,
PrefixPageLabel BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Visible BIT  NULL,
Constraint PK_MenuID_Menu PRIMARY KEY CLUSTERED (MenuID)
);

CREATE TABLE MenuType (
MenuTypeID INT IDENTITY(1,1) NOT NULL,
Label VARCHAR(50)  NOT NULL,
StandardMenuCommand INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_MenuTypeID_MenuType PRIMARY KEY CLUSTERED (MenuTypeID)
);

CREATE TABLE MetadataUtility (
MetadataUtilityID INT IDENTITY(1,1) NOT NULL,
UniqueID VARCHAR(16)  NOT NULL,
OperacaoType VARCHAR(10)  NOT NULL,
ImportedUniqueID VARCHAR(16)  NULL,
DBuser VARCHAR(256)  NOT NULL,
Userstamp VARCHAR(100)  NULL,
Datetimestamp DATETIME  NOT NULL,
ServerName VARCHAR(100)  NULL,
DatabaseName VARCHAR(100)  NULL,
FilePath VARCHAR(800)  NULL,
Constraint PK_MetadataUtilityID_MetadataUtility PRIMARY KEY CLUSTERED (MetadataUtilityID)
);

CREATE TABLE Monitors (
MonitorID INT IDENTITY(1,1) NOT NULL,
FundCode VARCHAR(25)  NOT NULL,
MemberID NUMERIC(18,0)  NOT NULL,
VendorID NUMERIC(18,0)  NULL,
Role VARCHAR(100)  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_MonitorID_Monitors PRIMARY KEY CLUSTERED (MonitorID)
);

CREATE TABLE MONTHCODES (
FUNDCODE VARCHAR(25)  NOT NULL,
MONTHNO INT  NOT NULL,
MONTHNAME VARCHAR(10)  NOT NULL,
MONTHORDER INT  NOT NULL,
QUARTER INT  NULL,
SELECTR INT  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(50)  NULL,
MONTHCODEID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_MONTHCODEID_MONTHCODES PRIMARY KEY CLUSTERED (MONTHCODEID)
);

CREATE TABLE MONTHLYDATES (
FUNDCODE VARCHAR(25)  NOT NULL,
FISCALYEAR INT  NOT NULL,
MONTHNO INT  NOT NULL,
STARTMONTH DATETIME  NULL,
ENDMONTH DATETIME  NULL,
WEEKS VARCHAR(8)  NULL,
BEDDAYS INT  NULL,
WEEKDAYS INT  NULL,
MON INT  NULL,
TUE INT  NULL,
WED INT  NULL,
THUR INT  NULL,
FRI INT  NULL,
SAT INT  NULL,
SUN INT  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
MONTHLYDATEID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_MONTHLYDATEID_MONTHLYDATES PRIMARY KEY CLUSTERED (MONTHLYDATEID)
);

CREATE TABLE MONTHLYEXP (
FUNDCODE VARCHAR(25)  NOT NULL,
FIPSCODE VARCHAR(3)  NOT NULL,
FYEAR INT  NOT NULL,
MONTHNUM INT  NOT NULL,
INDEXCODE VARCHAR(10)  NOT NULL,
SUBOBJECT VARCHAR(10)  NOT NULL,
EXPENDITURE NUMERIC(19,4)  NULL,
HAREXPENDITURE NUMERIC(19,4)  NULL,
UNDUPCOUNT INT  NULL,
REFUNDS NUMERIC(19,4)  NULL,
LOCALBUDGET NUMERIC(19,4)  NULL,
STATEBUDGET NUMERIC(19,4)  NULL
);

CREATE TABLE MONTHLYEXPENSES (
EXPENSEID NUMERIC(10,0)  NOT NULL,
CASENO NUMERIC(10,0)  NULL,
FAMILYID VARCHAR(20)  NULL,
REPORTMONTH INT  NULL,
FYEAR INT  NULL,
RECEIPTDATE DATETIME  NULL,
EXPENSETYPE VARCHAR(50)  NULL,
EXPAMOUNT NUMERIC(19,4)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
STATUS VARCHAR(100)  NULL,
PROOF INT  NULL,
DATETIMESTAMP DATETIME  NULL,
PAYMONTH INT  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE MONTHLYINCOME (
INCOMEID NUMERIC(10,0)  NOT NULL,
REPORTMONTH INT  NULL,
FYEAR INT  NULL,
CASENO NUMERIC(10,0)  NULL,
FAMILYID VARCHAR(20)  NULL,
RECEIPTDATE DATETIME  NULL,
INCOMESOURCE VARCHAR(50)  NULL,
INCOMESOURCEDESC VARCHAR(175)  NULL,
GROSSAMOUNT NUMERIC(19,4)  NULL,
DATEMONEYRECEIVED DATETIME  NULL,
NUMHRSWORKED VARCHAR(8)  NULL,
CHANGENEXTMONTH INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
STATUS VARCHAR(100)  NULL,
PROOF INT  NULL,
DATETIMESTAMP DATETIME  NULL,
PAYMONTH INT  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE MRDDWaitList (
MRDDWaitListID INT IDENTITY(1,1) NOT NULL,
CaseNo INT  NOT NULL,
ResidentialAppDate DATETIME  NULL,
ResidentialCriticalScore INT  NULL,
ResidentialDisposition INT  NULL,
ResidentialDispositionDate DATETIME  NULL,
NeedResidentialService BIT  NULL,
DayAppDate DATETIME  NULL,
DayCriticalScore INT  NULL,
DayDisposition INT  NULL,
DayDispositionDate DATETIME  NULL,
NeedDayService BIT  NULL,
SupportAppDate DATETIME  NULL,
SupportCriticalScore INT  NULL,
SupportDisposition INT  NULL,
SupportDispositionDate DATETIME  NULL,
NeedSupportService BIT  NULL,
Status VARCHAR(100)  NULL,
GlobalScore INT  NULL,
TieBreaker DATETIME  NULL,
Rank INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
WorkQueue VARCHAR(100)  NULL,
WorkQueueDate DATETIME  NULL,
ApplicationDate DATETIME  NULL,
ICAPScore INT  NULL,
DenyInElig BIT  NULL,
DenyLOC BIT  NULL,
DenyResponse BIT  NULL,
DenyOther BIT  NULL,
PendElig BIT  NULL,
PendCritInc BIT  NULL,
PendCritError BIT  NULL,
PendCritExp BIT  NULL,
PendAddInfo BIT  NULL,
PendOther BIT  NULL,
Explanation VARCHAR(400)  NULL,
GenericText1 VARCHAR(50)  NULL,
GenericText2 VARCHAR(50)  NULL,
GenericText3 VARCHAR(50)  NULL,
GenericText4 VARCHAR(50)  NULL,
Constraint PK_MRDDWaitListID_MRDDWaitList PRIMARY KEY CLUSTERED (MRDDWaitListID)
);

CREATE TABLE MyWorkLink (
MyWorkLinkID INT IDENTITY(1,1) NOT NULL,
Link VARCHAR(500)  NOT NULL,
LinkDescription VARCHAR(100)  NOT NULL,
SortOrder INT  NULL,
RoleID VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
LastUpdatedBy INT  NULL,
LastUpdatedDateTime DATETIME  NULL,
Constraint PK_MyWorkLinkID_MyWorkLink PRIMARY KEY CLUSTERED (MyWorkLinkID)
);

CREATE TABLE NAPISExportMapping (
NAPISExportMappingID INT IDENTITY(1,1) NOT NULL,
VServiceID INT  NOT NULL,
ServiceCodeISOID INT  NOT NULL,
NAPISTitle3E VARCHAR(100)  NULL,
NAPISSC VARCHAR(100)  NULL,
NAPISFS VARCHAR(100)  NULL,
NAPISMC VARCHAR(100)  NULL,
NAPISUT VARCHAR(100)  NULL,
NAPISUF NUMERIC(16,6)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_NAPISExportMappingID_NAPISExportMapping PRIMARY KEY CLUSTERED (NAPISExportMappingID)
);

CREATE TABLE Need (
NeedID INT IDENTITY(1,1) NOT NULL,
PlanID INT  NULL,
NeedCodeID INT  NOT NULL,
NeedText VARCHAR(MAX)  NULL,
RevisionDate DATETIME  NULL,
CompletionDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
PrimaryNeed BIT  NOT NULL,
ScaleID INT  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(45)  NULL,
GenericText1 VARCHAR(255)  NULL,
GenericText2 VARCHAR(255)  NULL,
GenericText3 VARCHAR(255)  NULL,
GenericText4 VARCHAR(255)  NULL,
GenericMemo1 VARCHAR(MAX)  NULL,
GenericMemo2 VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Progress VARCHAR(100)  NULL,
Constraint PK_NeedID_Need PRIMARY KEY CLUSTERED (NeedID)
);

CREATE TABLE NeedCode (
NeedCodeID INT IDENTITY(1,1) NOT NULL,
NeedCode VARCHAR(2000)  NOT NULL,
Need VARCHAR(MAX)  NULL,
RequiresNamePrefix BIT  NOT NULL,
Response VARCHAR(50)  NULL,
ScaleID INT  NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Type VARCHAR(100)  NULL,
Constraint PK_NeedCodeID_NeedCode PRIMARY KEY CLUSTERED (NeedCodeID)
);

CREATE TABLE NeedCodeCategory (
NeedCodeCategoryID INT IDENTITY(1,1) NOT NULL,
NeedCodeID INT  NOT NULL,
Category VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_NeedCodeCategoryID_NeedCodeCategory PRIMARY KEY CLUSTERED (NeedCodeCategoryID)
);

CREATE TABLE NeedCodeFundCode (
NeedCodeFundCodeID INT IDENTITY(1,1) NOT NULL,
NeedCodeID INT  NOT NULL,
FundCode VARCHAR(25)  NULL,
SiteID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_NeedCodeFundCodeID_NeedCodeFundCode PRIMARY KEY CLUSTERED (NeedCodeFundCodeID)
);

CREATE TABLE NeedCodeType (
NeedCodeTypeID INT IDENTITY(1,1) NOT NULL,
NeedCodeID INT  NOT NULL,
Type VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_NeedCodeTypeID_NeedCodeType PRIMARY KEY CLUSTERED (NeedCodeTypeID)
);

CREATE TABLE NEXTCHECK (
NEXTCHECKNO VARCHAR(50)  NOT NULL
);

CREATE TABLE NEXTNOS (
NEXTID VARCHAR(10)  NOT NULL,
NEXTNUM NUMERIC(10,0)  NULL
);

CREATE TABLE NOTES (
NoteID INT IDENTITY(1,1) NOT NULL,
NOTETYPE VARCHAR(100)  NULL,
NOTEDATE DATETIME  NULL,
DATECOMPLETED DATETIME  NULL,
GenericText3 VARCHAR(1000)  NULL,
NoteBy INT  NULL,
PHONE VARCHAR(16)  NULL,
STATUS VARCHAR(100)  NULL,
NOTES VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
FUNDCODE VARCHAR(25)  NULL,
DESCRIPTION VARCHAR(MAX)  NULL,
GenericText4 VARCHAR(1000)  NULL,
GenericText5 VARCHAR(1000)  NULL,
GenericText1 VARCHAR(1000)  NULL,
GenericText2 VARCHAR(1000)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(100)  NULL,
VendorID INT  NULL,
AppType VARCHAR(5)  NULL,
NoteSubType VARCHAR(100)  NULL,
TabType VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
Confidential BIT  NULL,
UserStamp INT  NOT NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
EntityID INT  NOT NULL,
ParticipantID INT  NULL,
ContactDate DATETIME  NULL,
ContactTime DATETIME  NULL,
InfoPathFormStatus BIT  NULL,
InfoPathFormUserStamp INT  NULL,
InfoPathFormCheckOutDate DATETIME  NULL,
RoutingNote BIT  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
StartTime DATETIME  NULL,
EndTime DATETIME  NULL,
ExternalNoteBy INT  NULL,
AgencyID INT  NULL,
ServiceProviderID INT  NULL,
ExternalNoteStatus VARCHAR(100)  NULL,
ShowConsumer BIT  NULL,
Duration NUMERIC(10,2)  NULL,
GenericDropDown5 VARCHAR(100)  NULL,
GenericDropDown6 VARCHAR(100)  NULL,
GenericDropDown7 VARCHAR(100)  NULL,
NoteSource VARCHAR(500)  NULL,
Constraint PK_NoteID_NOTES PRIMARY KEY CLUSTERED (NoteID)
);

CREATE TABLE NotesDocuments (
NotesDocumentsID INT IDENTITY(1,1) NOT NULL,
Description VARCHAR(256)  NULL,
Document VARCHAR(MAX)  NULL,
ContentType VARCHAR(255)  NULL,
ContentLength INT  NULL,
FileName VARCHAR(255)  NULL,
NoteID INT  NULL,
PageName VARCHAR(255)  NULL,
ChapterName VARCHAR(255)  NULL,
UserStamp INT  NULL,
ParentPageID INT  NULL,
DateTimeStamp DATETIME  NULL,
ElectronicFileQueue BIT  NULL,
RoutingFaxNumber VARCHAR(16)  NULL,
RoutingRecipientName VARCHAR(100)  NULL,
RoutingTransmissionID VARCHAR(50)  NULL,
RoutingCategory VARCHAR(100)  NULL,
RoutingSentDateTime DATETIME  NULL,
RoutingDetail VARCHAR(MAX)  NULL,
RoutingRetryCount INT  NULL,
RoutingType VARCHAR(50)  NULL,
RoutingMailAddress VARCHAR(400)  NULL,
LastDatePrinted DATETIME  NULL,
LastPrintedBy INT  NULL,
InstanceGuid VARCHAR(16)  NOT NULL,
Category VARCHAR(100)  NULL,
ImageType VARCHAR(4)  NULL,
Constraint PK_NotesDocumentsID_NotesDocuments PRIMARY KEY CLUSTERED (NotesDocumentsID)
);

CREATE TABLE NotesDocumentsPrintQueue (
AttachmentPrintID INT IDENTITY(1,1) NOT NULL,
JobID INT  NULL,
ChapterName VARCHAR(100)  NULL,
ChapterEntityID INT  NULL,
PageName VARCHAR(100)  NOT NULL,
PageEntityID INT  NOT NULL,
NoteID INT  NULL,
NoteDocumentsID INT  NULL,
FileName VARCHAR(255)  NULL,
UserStamp INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
PrintStatus VARCHAR(100)  NULL,
StatusMessage VARCHAR(250)  NULL,
Constraint PK_AttachmentPrintID_NotesDocumentsPrintQueue PRIMARY KEY CLUSTERED (AttachmentPrintID)
);

CREATE TABLE NOTESRECIPIENTS (
NOTESRECIPIENTSID INT IDENTITY(1,1) NOT NULL,
NOTESTATUS VARCHAR(15)  NULL,
DATESENT DATETIME  NULL,
DATEREAD DATETIME  NULL,
NOTEID INT  NULL,
RECEIVERID NUMERIC(10,0)  NULL,
APPTYPE VARCHAR(5)  NULL,
SignedDate DATETIME  NULL,
SignedDocument NUMERIC(18,0)  NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
FaxNumber VARCHAR(16)  NULL,
RecipientName VARCHAR(100)  NULL,
TransmissionID VARCHAR(50)  NULL,
DeliveryMethod VARCHAR(100)  NULL,
Detail VARCHAR(MAX)  NULL,
RetryCount INT  NULL,
RoutingType VARCHAR(50)  NULL,
EmailAddress VARCHAR(100)  NULL,
MailingAddress VARCHAR(400)  NULL,
Agency VARCHAR(75)  NULL,
Status VARCHAR(100)  NULL,
CreateDate DATETIME  NULL,
VendorID INT  NULL,
RecipientType VARCHAR(100)  NULL,
Comments VARCHAR(1000)  NULL,
IncludeNoteSummary BIT  NULL,
FaxCover VARCHAR(100)  NULL,
TrackingId VARCHAR(1000)  NULL,
Constraint PK_NOTESRECIPIENTSID_NOTESRECIPIENTS PRIMARY KEY CLUSTERED (NOTESRECIPIENTSID)
);

CREATE TABLE NotesRecipientsDocuments (
NotesRecipientsDocID INT IDENTITY(1,1) NOT NULL,
NotesRecipientID INT  NOT NULL,
NotesDocumentID INT  NOT NULL,
Userstamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_NotesRecipientsDocID_NotesRecipientsDocuments PRIMARY KEY CLUSTERED (NotesRecipientsDocID)
);

CREATE TABLE OAAPSExportMapping (
OAAPSExportMappingID INT IDENTITY(1,1) NOT NULL,
VServiceID INT  NOT NULL,
ServiceCodeISOID INT  NOT NULL,
OAAPSTitle3E VARCHAR(100)  NULL,
OAAPSSC VARCHAR(100)  NULL,
OAAPSFS VARCHAR(100)  NULL,
OAAPSMC VARCHAR(100)  NULL,
OAAPSUT VARCHAR(100)  NULL,
OAAPSUF NUMERIC(16,6)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
OAAPSSE VARCHAR(100)  NULL,
OAAPSCaregiverType VARCHAR(200)  NULL,
Constraint PK_OAAPSExportMappingID_OAAPSExportMapping PRIMARY KEY CLUSTERED (OAAPSExportMappingID)
);

CREATE TABLE Objective (
ObjectiveID INT IDENTITY(1,1) NOT NULL,
GoalID INT  NULL,
NeedID INT  NULL,
ObjectiveCodeID INT  NOT NULL,
ObjectiveText VARCHAR(MAX)  NULL,
RevisionDate DATETIME  NULL,
CompletionDate DATETIME  NULL,
StartDate DATETIME  NULL,
TargetDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
Comments VARCHAR(MAX)  NULL,
Responsibility VARCHAR(50)  NULL,
ScaleID INT  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
GenericDropDown3 VARCHAR(100)  NULL,
GenericDropDown4 VARCHAR(45)  NULL,
GenericText1 VARCHAR(1000)  NULL,
GenericText2 VARCHAR(1000)  NULL,
GenericText3 VARCHAR(1000)  NULL,
GenericText4 VARCHAR(1000)  NULL,
GenericMemo1 VARCHAR(MAX)  NULL,
GenericMemo2 VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Progress VARCHAR(100)  NULL,
Constraint PK_ObjectiveID_Objective PRIMARY KEY CLUSTERED (ObjectiveID)
);

CREATE TABLE ObjectiveCode (
ObjectiveCodeID INT IDENTITY(1,1) NOT NULL,
Objective VARCHAR(MAX)  NULL,
RequiresNamePrefix BIT  NOT NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Constraint PK_ObjectiveCodeID_ObjectiveCode PRIMARY KEY CLUSTERED (ObjectiveCodeID)
);

CREATE TABLE ObjectiveCodeCategory (
ObjectiveCodeCategoryID INT IDENTITY(1,1) NOT NULL,
ObjectiveCodeID INT  NOT NULL,
Category VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ObjectiveCodeCategoryID_ObjectiveCodeCategory PRIMARY KEY CLUSTERED (ObjectiveCodeCategoryID)
);

CREATE TABLE OBJECTIVEPROGRAMS (
OBJECTIVEID NUMERIC(10,0)  NOT NULL,
VENDORID NUMERIC(10,0)  NOT NULL
);

CREATE TABLE OGACTIVITIES (
OGACTIVITYID NUMERIC(10,0)  NOT NULL,
OGACTMONTHNO INT  NULL,
OGMAINTID NUMERIC(10,0)  NULL,
CASENO NUMERIC(10,0)  NULL,
WORKTYPE VARCHAR(50)  NULL,
WORKHOURS VARCHAR(8)  NULL,
DATETIMESTAMP DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE OGMAINT (
OGMAINTID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
FUNDCODE VARCHAR(25)  NULL,
VENDORID INT  NOT NULL,
ENTITLEMENT NUMERIC(19,4)  NULL,
PERSALLOW NUMERIC(19,4)  NULL,
WAGES NUMERIC(19,4)  NULL,
SSI NUMERIC(19,4)  NULL,
RECOUPMENT NUMERIC(19,4)  NULL,
OTHER1 NUMERIC(19,4)  NULL,
OTHER2 NUMERIC(19,4)  NULL,
CHECKAMOUNT NUMERIC(19,4)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ACTIONDATE DATETIME  NULL,
EFFECTIVEDATE DATETIME  NULL,
STOPDATE DATETIME  NULL,
ACTIONCODE VARCHAR(50)  NULL,
CURRENTPO VARCHAR(15)  NULL,
INDEXCODE VARCHAR(10)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
PAYEENAME VARCHAR(75)  NULL,
STREET VARCHAR(100)  NULL,
STREET2 VARCHAR(100)  NULL,
CITY VARCHAR(30)  NULL,
STATE VARCHAR(100)  NULL,
ZIP VARCHAR(10)  NULL,
VETERANBENEFITS NUMERIC(19,4)  NULL,
SOCIALSECURITY NUMERIC(19,4)  NULL,
CIVILSERVICE NUMERIC(19,4)  NULL,
VSERVICEID INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
LOCAL NUMERIC(19,4)  NULL,
TYPE VARCHAR(100)  NULL,
FIRSTAUTH NUMERIC(10,0)  NULL,
SECONDAUTH NUMERIC(10,0)  NULL,
THIRDAUTH NUMERIC(10,0)  NULL,
FIRSTAUTHDATE DATETIME  NULL,
SECONDAUTHDATE DATETIME  NULL,
THIRDAUTHDATE DATETIME  NULL,
FYR INT  NULL,
PAYMONTH INT  NULL,
FAMILYTYPE VARCHAR(50)  NULL,
PGMVOUCHERNO VARCHAR(50)  NULL,
EXPECTEDTERMDATE DATETIME  NULL,
PROJAMT VARCHAR(8)  NULL,
SERVICETYPE INT  NULL,
UserStamp INT  NOT NULL,
VENDFUNDID INT  NOT NULL,
Constraint PK_OGMAINTID_OGMAINT PRIMARY KEY CLUSTERED (OGMAINTID)
);

CREATE TABLE OGSERVICES (
OGMAINTID NUMERIC(10,0)  NOT NULL,
FY VARCHAR(4)  NOT NULL,
MONTHNO INT  NOT NULL,
VSERVICEID NUMERIC(10,0)  NOT NULL,
FUNDCODE VARCHAR(25)  NULL,
FIPSCODE VARCHAR(3)  NULL,
PO INT  NULL,
PCOST NUMERIC(19,4)  NULL,
AMOUNT NUMERIC(19,4)  NULL,
UNITS INT  NULL,
CHECKNO VARCHAR(15)  NULL,
CHECKDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NULL,
CHECKPRINTED INT  NULL,
SELECTR INT  NULL,
INDEXCODE VARCHAR(10)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
TYPE VARCHAR(50)  NULL,
LOCAL NUMERIC(19,4)  NULL,
FIRSTAUTH NUMERIC(10,0)  NULL,
SECONDAUTH NUMERIC(10,0)  NULL,
THIRDAUTH NUMERIC(10,0)  NULL,
FIRSTAUTHDATE DATETIME  NULL,
SECONDAUTHDATE DATETIME  NULL,
THIRDAUTHDATE DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE OPENCLOSE (
OPENID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
DATAENTRYDATE DATETIME  NULL,
REFERRALDATE DATETIME  NULL,
OPENDATE DATETIME  NULL,
REFERREDBY NUMERIC(10,0)  NULL,
REFERRALSOURCE VARCHAR(100)  NULL,
FIRSTCONTACT DATETIME  NULL,
CLOSEDATE DATETIME  NULL,
GOALSMET VARCHAR(25)  NULL,
CURRENTOPEN INT  NULL,
OPENREASON VARCHAR(MAX)  NULL,
CLOSEREASON VARCHAR(100)  NULL,
RESULTS VARCHAR(MAX)  NULL,
FINSETTLED INT  NULL,
DISPOSITION VARCHAR(100)  NOT NULL,
GENERIC1 VARCHAR(50)  NULL,
GENERIC2 VARCHAR(50)  NULL,
GENERICDATE1 DATETIME  NULL,
GENERICYN1 INT  NULL,
GENERIC3 NUMERIC(10,0)  NULL,
GENERIC4 VARCHAR(50)  NULL,
GENERICDATE2 DATETIME  NULL,
GENERICYN2 INT  NULL,
FUNDCODE VARCHAR(25)  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
PRIMARYWORKERID INT  NULL,
SECONDWORKERID INT  NULL,
GENERICCURRENCY NUMERIC(19,4)  NULL,
REFNAME VARCHAR(50)  NULL,
REFTITLE VARCHAR(50)  NULL,
REFAGENCY VARCHAR(50)  NULL,
REFSTREET VARCHAR(100)  NULL,
REFSTREET2 VARCHAR(100)  NULL,
REFCITY VARCHAR(30)  NULL,
REFSTATE VARCHAR(100)  NULL,
REFZIPCODE VARCHAR(11)  NULL,
REFHPHONE VARCHAR(16)  NULL,
REFWPHONE VARCHAR(16)  NULL,
REFEPHONE VARCHAR(16)  NULL,
REFFAX VARCHAR(16)  NULL,
REFEMAIL VARCHAR(75)  NULL,
INTERVIEWDATE DATETIME  NULL,
REFPOTLSERVICES VARCHAR(75)  NULL,
REFSOURCETYPE VARCHAR(50)  NULL,
COUNTRY VARCHAR(25)  NULL,
REFPRIREASON VARCHAR(100)  NULL,
REFSECREASON VARCHAR(100)  NULL,
REFTERREASONS VARCHAR(100)  NULL,
REFTIME DATETIME  NULL,
PRISERVICEREQ VARCHAR(100)  NULL,
SECSERVICEREQ VARCHAR(100)  NULL,
TERSERVICEREQ VARCHAR(100)  NULL,
CURRPAYERAPP INT  NULL,
ALLOTTEDUNITS VARCHAR(15)  NULL,
ANTLENGTHSRV VARCHAR(25)  NULL,
FIRSTCONTACTTIME DATETIME  NULL,
OPENTIME DATETIME  NULL,
DISPOSITIONDATE DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
GENERIC5 VARCHAR(100)  NULL,
GENERIC6 VARCHAR(100)  NULL,
GENERIC7 VARCHAR(50)  NULL,
NDDATETIMESTAMP DATETIME  NULL,
NEWDISPOSITION VARCHAR(25)  NULL,
LinkedOpenID INT  NULL,
CaseID INT  NULL,
RefAgency2 VARCHAR(50)  NULL,
REFQUATREASON VARCHAR(60)  NULL,
REFQUINREASON VARCHAR(60)  NULL,
UserStamp INT  NOT NULL,
PA600Date DATETIME  NULL,
LOCADateSent DATETIME  NULL,
LOCADateReceived DATETIME  NULL,
LOCAEligibility VARCHAR(100)  NULL,
LOCALengthCare VARCHAR(100)  NULL,
PCDateSent DATETIME  NULL,
PCDateReceived DATETIME  NULL,
PCEligibility VARCHAR(100)  NULL,
PCLengthCare VARCHAR(100)  NULL,
ManageOwnCare VARCHAR(100)  NULL,
ReasonLOCA VARCHAR(100)  NULL,
ReasonPC VARCHAR(100)  NULL,
LOCARouting VARCHAR(100)  NULL,
QualifyingICD9 VARCHAR(100)  NULL,
HomeVisitDate DATETIME  NULL,
PA600ReceivedDate DATETIME  NULL,
EstTransitionDate DATETIME  NULL,
DelayedEnrollment VARCHAR(100)  NULL,
CAOProvider INT  NULL,
SentDate DATETIME  NULL,
ReceivedDate DATETIME  NULL,
Applicant BIT  NULL,
GuardianshipAssignment VARCHAR(100)  NULL,
GuardianshipApptStatus VARCHAR(100)  NULL,
GuardianshipType VARCHAR(100)  NULL,
LettersReceivedStatus VARCHAR(100)  NULL,
LettersReceivedDate DATETIME  NULL,
OrdersReceivedStatus VARCHAR(100)  NULL,
OrdersReceivedDate DATETIME  NULL,
DateOathTaken DATETIME  NULL,
OathPerson INT  NULL,
CountyOathTaken VARCHAR(100)  NULL,
Region VARCHAR(100)  NULL,
EMAR BIT  NULL,
TypeOfExit VARCHAR(300)  NULL,
EmploymentOutcomeAtExit VARCHAR(300)  NULL,
PrimaryOccupationAtExit NUMERIC(6,0)  NULL,
HourlyWageAtExit NUMERIC(19,2)  NULL,
HoursWorkedInaWeekAtExit NUMERIC(2,0)  NULL,
MonthlyPublicSupportAtExit VARCHAR(MAX)  NULL,
MedicalInsuranceCoverageAtExit VARCHAR(MAX)  NULL,
Constraint PK_OPENID_OPENCLOSE PRIMARY KEY CLUSTERED (OPENID)
);

CREATE TABLE OtherPayer (
OtherPayerID INT IDENTITY(1,1) NOT NULL,
PayerName VARCHAR(100)  NOT NULL,
Address1 VARCHAR(100)  NOT NULL,
Address2 VARCHAR(100)  NULL,
City VARCHAR(30)  NOT NULL,
State VARCHAR(100)  NOT NULL,
Zip VARCHAR(11)  NOT NULL,
Phone VARCHAR(16)  NULL,
Fax VARCHAR(16)  NULL,
Type VARCHAR(100)  NULL,
COBPaidAmount VARCHAR(8)  NOT NULL,
Comment VARCHAR(MAX)  NULL,
COBPatientResponsibilityAmount VARCHAR(8)  NOT NULL,
ClaimID INT  NOT NULL,
AdjustmentCodeID INT  NULL,
PayerID INT  NOT NULL,
PayerControlNumber INT  NULL,
COBDiscountAmount VARCHAR(8)  NOT NULL,
COBApprovedAmount VARCHAR(8)  NOT NULL,
COBPerDayLimitAmount VARCHAR(8)  NOT NULL,
COBTaxAmount VARCHAR(8)  NOT NULL,
COBTotalBeforeTaxAmount VARCHAR(8)  NOT NULL,
COBCoveredAmount VARCHAR(8)  NOT NULL,
COBPatientPaidAmount VARCHAR(8)  NOT NULL,
PayerIdentificationCodeQualifier VARCHAR(100)  NOT NULL,
PayerIdentificationCode VARCHAR(30)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_OtherPayerID_OtherPayer PRIMARY KEY CLUSTERED (OtherPayerID)
);

CREATE TABLE OutboundBatch (
OutboundBatchID INT IDENTITY(1,1) NOT NULL,
FileType VARCHAR(15)  NULL,
ISAControlNumber VARCHAR(10)  NULL,
ISADate DATETIME  NULL,
ISATime VARCHAR(4)  NULL,
ISASenderID VARCHAR(15)  NULL,
ISAReceiverID VARCHAR(15)  NULL,
GroupControlNumber VARCHAR(10)  NULL,
DateTimeStamp DATETIME  NOT NULL,
OutboundBatchFileName VARCHAR(255)  NULL,
DateTimeTransmittal DATETIME  NULL,
FundCode VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
ExportType VARCHAR(100)  NULL,
AgencyID INT  NULL,
Description VARCHAR(100)  NULL,
EarliestDate DATETIME  NULL,
LatestDate DATETIME  NULL,
CreatedDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
NumberOfItems INT  NULL,
CreatedBy INT  NULL,
Constraint PK_OutboundBatchID_OutboundBatch PRIMARY KEY CLUSTERED (OutboundBatchID)
);

CREATE TABLE OutboundBatch_AssessDetReview (
OutboundBatchAssessDetReviewID INT IDENTITY(1,1) NOT NULL,
OutboundBatchAssessReviewID INT  NOT NULL,
SCALE VARCHAR(255)  NULL,
ITEM VARCHAR(MAX)  NULL,
SCORE NUMERIC(10,0)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
YN INT  NULL,
SCALEID NUMERIC(10,0)  NOT NULL,
LOOKUPVALUE VARCHAR(50)  NULL,
QUESTIONID VARCHAR(15)  NULL,
SECID VARCHAR(500)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_OutboundBatchAssessDetReviewID_OutboundBatch_AssessDetReview PRIMARY KEY CLUSTERED (OutboundBatchAssessDetReviewID)
);

CREATE TABLE OutboundBatch_AssessReview (
OutboundBatchAssessReviewID INT IDENTITY(1,1) NOT NULL,
ExportID INT  NOT NULL,
ASSESSID INT  NOT NULL,
ParentEntityID INT  NULL,
AssessChapter VARCHAR(255)  NOT NULL,
AssessPage VARCHAR(255)  NOT NULL,
CASENO INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
REVIEW VARCHAR(100)  NULL,
RATER NUMERIC(10,0)  NULL,
Status VARCHAR(100)  NULL,
ScreenDesignID INT  NOT NULL,
Agency INT  NULL,
ValidStatus VARCHAR(100)  NULL,
ValidError VARCHAR(255)  NULL,
CreatedBy INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Postfix VARCHAR(2)  NULL,
Constraint PK_OutboundBatchAssessReviewID_OutboundBatch_AssessReview PRIMARY KEY CLUSTERED (OutboundBatchAssessReviewID)
);

CREATE TABLE Page (
PageID INT IDENTITY(1,1) NOT NULL,
ChapterID INT  NOT NULL,
ParentPageID INT  NULL,
PageTypeID INT  NOT NULL,
Label VARCHAR(255)  NOT NULL,
PageName VARCHAR(255)  NOT NULL,
AccessLevel INT  NOT NULL,
SortBy INT  NULL,
Visible BIT  NOT NULL,
UserRequired BIT  NOT NULL,
IsDefault BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
SystemRequired BIT  NOT NULL,
IsAdvancedSearchTemplate BIT  NULL,
HarmonyHelpID INT  NULL,
UserHelpID INT  NULL,
DisplayInTab BIT  NOT NULL,
UseInWFW BIT  NOT NULL,
IsChapterHeader BIT  NOT NULL,
IsWFWCallPage BIT  NOT NULL,
ShowInGroupSetup BIT  NOT NULL,
UserStamp INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
PageSetID INT  NULL,
Constraint PK_PageID_Page PRIMARY KEY CLUSTERED (PageID)
);

CREATE TABLE PageControl (
PageControlID INT IDENTITY(1,1) NOT NULL,
PageID INT  NOT NULL,
UserControlID INT  NOT NULL,
Label VARCHAR(255)  NULL,
ControlOrder INT  NOT NULL,
Visible BIT  NOT NULL,
InsertSPName VARCHAR(255)  NULL,
UpdateSPName VARCHAR(255)  NULL,
FetchSPName VARCHAR(255)  NULL,
DeleteSPName VARCHAR(255)  NULL,
HistorySPName VARCHAR(255)  NULL,
HistoryIndexSPName VARCHAR(255)  NULL,
PrimaryKeyName VARCHAR(255)  NULL,
OraclePackage VARCHAR(255)  NULL,
SectionRepeatDirection INT  NOT NULL,
SectionRepeatColumns INT  NULL,
CssClass VARCHAR(50)  NULL,
StatusField VARCHAR(100)  NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PageControlID_PageControl PRIMARY KEY CLUSTERED (PageControlID)
);

CREATE TABLE PageControlEventService (
PageControlEventServiceID INT IDENTITY(1,1) NOT NULL,
PageControlID INT  NOT NULL,
EventServiceID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PageControlEventServiceID_PageControlEventService PRIMARY KEY CLUSTERED (PageControlEventServiceID)
);

CREATE TABLE PageControlProperty (
PageControlPropertyID INT IDENTITY(1,1) NOT NULL,
PageControlID INT  NOT NULL,
PropertyName VARCHAR(100)  NOT NULL,
PropertyValue VARCHAR(7000)  NOT NULL,
UseOnPostback BIT  NOT NULL,
UseReflection BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PageControlPropertyID_PageControlProperty PRIMARY KEY CLUSTERED (PageControlPropertyID)
);

CREATE TABLE PageFlyOutMenu (
PageFlyOutMenuID INT IDENTITY(1,1) NOT NULL,
MenuID INT  NOT NULL,
PageID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PageFlyOutMenuID_PageFlyOutMenu PRIMARY KEY CLUSTERED (PageFlyOutMenuID)
);

CREATE TABLE PageMenu (
PageMenuID INT IDENTITY(1,1) NOT NULL,
MenuID INT  NOT NULL,
PageID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Visible BIT  NULL,
ApplyToGroup BIT  NULL,
SortBy INT  NOT NULL,
Constraint PK_PageMenuID_PageMenu PRIMARY KEY CLUSTERED (PageMenuID)
);

CREATE TABLE PageProperty (
PagePropertyID INT IDENTITY(1,1) NOT NULL,
PageID INT  NOT NULL,
PropertyName VARCHAR(100)  NOT NULL,
PropertyValue VARCHAR(7000)  NOT NULL,
UseOnPostback BIT  NOT NULL,
UseReflection BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PagePropertyID_PageProperty PRIMARY KEY CLUSTERED (PagePropertyID)
);

CREATE TABLE PageReportMenu (
PageReportMenuID INT IDENTITY(1,1) NOT NULL,
RepID INT  NOT NULL,
PageName VARCHAR(255)  NULL,
ChapterName VARCHAR(255)  NULL,
SortBy INT  NOT NULL,
EntityType VARCHAR(100)  NOT NULL,
Label VARCHAR(255)  NOT NULL,
Constraint PK_PageReportMenuID_PageReportMenu PRIMARY KEY CLUSTERED (PageReportMenuID)
);

CREATE TABLE PageSet (
PageSetID INT IDENTITY(1,1) NOT NULL,
ChapterID INT  NOT NULL,
Label VARCHAR(255)  NULL,
SortBy INT  NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PageSetID_PageSet PRIMARY KEY CLUSTERED (PageSetID)
);

CREATE TABLE PageType (
PageTypeID INT IDENTITY(1,1) NOT NULL,
Label VARCHAR(255)  NOT NULL,
IsChapterLayoutTemplate BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PageTypeID_PageType PRIMARY KEY CLUSTERED (PageTypeID)
);

CREATE TABLE PageWordMergeDocsMenu (
PageWordMergeDocsMenuID INT IDENTITY(1,1) NOT NULL,
DocID INT  NULL,
PageName VARCHAR(255)  NULL,
ChapterName VARCHAR(255)  NULL,
SortBy INT  NOT NULL,
EntityType VARCHAR(100)  NOT NULL,
Label VARCHAR(255)  NOT NULL,
ScreenDesignID INT  NULL,
WordMergeTemplateID INT  NOT NULL,
Constraint PK_PageWordMergeDocsMenuID_PageWordMergeDocsMenu PRIMARY KEY CLUSTERED (PageWordMergeDocsMenuID)
);

CREATE TABLE PayerBenefit (
PayerBenefitID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
PayerID NUMERIC(10,0)  NOT NULL,
BenefitName VARCHAR(64)  NOT NULL,
CopayAmount VARCHAR(8)  NOT NULL,
AmountFormat VARCHAR(16)  NOT NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NOT NULL,
Active INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_PayerBenefitID_PayerBenefit PRIMARY KEY CLUSTERED (PayerBenefitID)
);

CREATE TABLE PAYMENTS (
PAYMENTID INT IDENTITY(1,1) NOT NULL,
CLAIMID NUMERIC(10,0)  NULL,
PAYERNUM NUMERIC(10,0)  NULL,
PAYERID NUMERIC(10,0)  NULL,
PAYERPAID NUMERIC(19,4)  NULL,
PAYDATE DATETIME  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
TYPEPAY VARCHAR(50)  NULL,
PAIDBY VARCHAR(50)  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_PAYMENTID_PAYMENTS PRIMARY KEY CLUSTERED (PAYMENTID)
);

CREATE TABLE PAYMENTSRECEIVED (
PAYMENTID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
FISCALYEAR INT  NOT NULL,
MONTHNO VARCHAR(100)  NULL,
PAYMENTSOURCE VARCHAR(100)  NULL,
PAIDAMOUNT NUMERIC(19,4)  NULL,
CHECKNO VARCHAR(25)  NULL,
DATEPAID DATETIME  NULL,
INDEXCODE VARCHAR(10)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
DATETIMESTAMP DATETIME  NULL,
COMMENTS VARCHAR(MAX)  NULL,
FUNDCODE VARCHAR(25)  NULL,
FIPSCODE VARCHAR(3)  NULL,
STATUS VARCHAR(100)  NULL,
PAYMETHOD VARCHAR(100)  NULL,
RECEIPTNO VARCHAR(25)  NULL,
TRANTYPE VARCHAR(50)  NULL,
APPTYPE VARCHAR(5)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
GenericDate1 DATETIME  NULL,
UserStamp INT  NOT NULL,
Constraint PK_PAYMENTID_PAYMENTSRECEIVED PRIMARY KEY CLUSTERED (PAYMENTID)
);

CREATE TABLE PayorFundCode (
PayorFundCodeID INT IDENTITY(1,1) NOT NULL,
PAYORID INT  NOT NULL,
FUNDCODE VARCHAR(25)  NOT NULL,
ACTIVE BIT  NOT NULL,
EFFECTIVEDATE DATETIME  NOT NULL,
ENDDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_PayorFundCodeID_PayorFundCode PRIMARY KEY CLUSTERED (PayorFundCodeID)
);

CREATE TABLE Payors (
PayorID INT IDENTITY(1,1) NOT NULL,
PayorName VARCHAR(75)  NOT NULL,
PayorStreet VARCHAR(100)  NULL,
PayorStreet2 VARCHAR(100)  NULL,
PayorCity VARCHAR(30)  NULL,
PayorState VARCHAR(100)  NULL,
PayorZip VARCHAR(10)  NULL,
PayorComments VARCHAR(MAX)  NULL,
PayorContact VARCHAR(50)  NULL,
PayorPhone VARCHAR(16)  NULL,
AccountID VARCHAR(25)  NULL,
PayorType VARCHAR(15)  NOT NULL,
ActiveYN BIT  NOT NULL,
PayorNumber NUMERIC(10,0)  NULL,
PayerAuthNumberRequired INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
PayorOrder INT  NULL,
PayorQualifier VARCHAR(3)  NULL,
Constraint PK_PayorID_Payors PRIMARY KEY CLUSTERED (PayorID)
);

CREATE TABLE PAYORSERVICES (
PAYORSERVICEID INT IDENTITY(1,1) NOT NULL,
PAYORID INT  NULL,
VSERVICEID INT  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
PRIMARYPAYOR INT  NULL,
UNITCOST NUMERIC(10,2)  NULL,
SECONDARYCODE VARCHAR(50)  NULL,
EXCLUDEYN INT  NULL,
AppType VARCHAR(5)  NULL,
DateTimeStamp DATETIME  NULL,
License VARCHAR(50)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_PAYORSERVICEID_PAYORSERVICES PRIMARY KEY CLUSTERED (PAYORSERVICEID)
);

CREATE TABLE PayorTypes (
PayorTypeID INT IDENTITY(1,1) NOT NULL,
PAYORTYPE VARCHAR(15)  NOT NULL,
BILLFREQ VARCHAR(100)  NULL,
CLAIMFORM NUMERIC(10,0)  NULL,
APPTYPE VARCHAR(5)  NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_PayorTypeID_PayorTypes PRIMARY KEY CLUSTERED (PayorTypeID)
);

CREATE TABLE Permission (
PermissionID INT IDENTITY(1,1) NOT NULL,
Permission VARCHAR(255)  NOT NULL,
SystemPermission BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PermissionID_Permission PRIMARY KEY CLUSTERED (PermissionID)
);

CREATE TABLE PLANACTIVITIES (
PlanActivityID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
PlanActivity VARCHAR(255)  NULL,
Objective NUMERIC(10,0)  NULL,
ActivityType VARCHAR(255)  NULL,
APPTYPE VARCHAR(5)  NULL,
Active INT  NULL,
RequiresNamePrefix INT  NULL,
Constraint PK_PlanActivityID_PLANACTIVITIES PRIMARY KEY CLUSTERED (PlanActivityID)
);

CREATE TABLE PlanCode (
PlanCodeID INT IDENTITY(1,1) NOT NULL,
NeedCodeID INT  NOT NULL,
GoalCodeID INT  NULL,
ObjectiveCodeID INT  NULL,
InterventionCodeID INT  NULL,
PlanCategory VARCHAR(100)  NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
FundCode VARCHAR(MAX)  NULL,
Constraint PK_PlanCodeID_PlanCode PRIMARY KEY CLUSTERED (PlanCodeID)
);

CREATE TABLE PlanDetReview (
PlanDetReviewID INT IDENTITY(1,1) NOT NULL,
Assessment VARCHAR(50)  NULL,
Scale VARCHAR(255)  NULL,
Item VARCHAR(MAX)  NULL,
Score NUMERIC(10,0)  NULL,
Comments VARCHAR(MAX)  NULL,
YN INT  NULL,
LookupValue VARCHAR(50)  NULL,
ScaleID INT  NOT NULL,
QuestionID VARCHAR(15)  NULL,
SecID VARCHAR(15)  NULL,
AssessID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_PlanDetReviewID_PlanDetReview PRIMARY KEY CLUSTERED (PlanDetReviewID)
);

CREATE TABLE PLANNEDSERVICES (
PLANSERVICEID INT IDENTITY(1,1) NOT NULL,
PLANID INT  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
Cost NUMERIC(19,4)  NULL,
VendorID INT  NULL,
UNITCOST NUMERIC(19,4)  NULL,
UNITS NUMERIC(19,4)  NULL,
VServiceID INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
ISComboCodeID INT  NULL,
AuthServiceID INT  NULL,
PayorID INT  NULL,
FiscalYear INT  NULL,
FundingSource VARCHAR(50)  NULL,
UnitsPer NUMERIC(19,2)  NULL,
MaxAmount NUMERIC(19,2)  NULL,
NumberOfPeriods NUMERIC(19,2)  NULL,
UnitsOfMeasure VARCHAR(25)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericCheckBox1 BIT  NULL,
GenericCheckBox2 BIT  NULL,
GenericText1 VARCHAR(5000)  NULL,
ServiceID INT  NOT NULL,
BaseCost NUMERIC(19,4)  NULL,
UseServiceSchedule BIT  NULL,
ConsumerLiability NUMERIC(9,2)  NULL,
ProvSelectionMethod VARCHAR(100)  NULL,
ProvSelectionDisposition VARCHAR(100)  NULL,
ProvSelectionReason VARCHAR(100)  NULL,
ProvSelectionReasonOther VARCHAR(MAX)  NULL,
GenericDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
UnitsFractional NUMERIC(19,2)  NULL,
COMMENTS278 VARCHAR(264)  NULL,
AllowEVVDelivery BIT  NULL,
EVVComments VARCHAR(500)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericLookup4 VARCHAR(100)  NULL,
GenericLookup5 VARCHAR(100)  NULL,
ContractNumber VARCHAR(50)  NULL,
ProviderRateType VARCHAR(100)  NULL,
InternalProgram VARCHAR(100)  NULL,
ConsumerCounty VARCHAR(100)  NULL,
ServiceRatio VARCHAR(100)  NULL,
CopiedFromPlanServiceID INT  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
InventoryID INT  NULL,
Constraint PK_PLANSERVICEID_PLANNEDSERVICES PRIMARY KEY CLUSTERED (PLANSERVICEID)
);

CREATE TABLE PlannedSvcsToAuthsPush (
PlannedSvcsToAuthsPushID INT IDENTITY(1,1) NOT NULL,
FUNDCODE VARCHAR(25)  NOT NULL,
ProgramID INT  NOT NULL,
SplitBy VARCHAR(100)  NOT NULL,
SplitLogic VARCHAR(100)  NOT NULL,
PushLogic VARCHAR(100)  NOT NULL,
PopulateFY VARCHAR(100)  NULL,
AuthSvcsFor0 VARCHAR(100)  NOT NULL,
Active BIT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
DefaultEDIStatus VARCHAR(100)  NULL,
Constraint PK_PlannedSvcsToAuthsPushID_PlannedSvcsToAuthsPush PRIMARY KEY CLUSTERED (PlannedSvcsToAuthsPushID)
);

CREATE TABLE PlanOverridingRoles (
PlanOverrideRoleID INT IDENTITY(1,1) NOT NULL,
RoleName VARCHAR(255)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Active BIT  NOT NULL,
ProgramName VARCHAR(255)  NULL,
Constraint PK_PlanOverrideRoleID_PlanOverridingRoles PRIMARY KEY CLUSTERED (PlanOverrideRoleID)
);

CREATE TABLE PlanReview (
AssessID INT IDENTITY(1,1) NOT NULL,
Assessment VARCHAR(50)  NULL,
Review VARCHAR(100)  NULL,
NumDaysTilNext INT  NULL,
Score1 NUMERIC(10,0)  NULL,
Score2 NUMERIC(10,0)  NULL,
Rater INT  NULL,
LevelOfNeed INT  NULL,
SystemFactors VARCHAR(50)  NULL,
IndividualFactors VARCHAR(50)  NULL,
Status VARCHAR(100)  NULL,
Risks VARCHAR(50)  NULL,
ReviewDate DATETIME  NULL,
ApprovedBy INT  NULL,
ApproveDate DATETIME  NULL,
ApproveUser VARCHAR(10)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comments VARCHAR(MAX)  NULL,
TriggerID INT  NULL,
TriggerPage VARCHAR(20)  NULL,
EnrollID INT  NULL,
PlanID INT  NULL,
ScreenDesignID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
InfoPathFormStatus INT  NULL,
ExpirationDate DATETIME  NULL,
Expired BIT  NULL,
Constraint PK_AssessID_PlanReview PRIMARY KEY CLUSTERED (AssessID)
);

CREATE TABLE PLANS (
PLANID INT IDENTITY(1,1) NOT NULL,
OPENDATE DATETIME  NULL,
CLOSEDATE DATETIME  NULL,
OPENREASON VARCHAR(MAX)  NULL,
CLOSEREASON VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL,
OPENID INT  NOT NULL,
WORKER INT  NULL,
ENROLLID INT  NULL,
STATUS VARCHAR(100)  NULL,
TARGETDATE DATETIME  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
GenericCheckBox1 BIT  NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
EntityID INT  NULL,
ParticipantID INT  NULL,
AgencyID INT  NULL,
ReasonForIgnoringValidation VARCHAR(255)  NULL,
Valid BIT  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
SecondaryWorker INT  NULL,
CopiedFromPlanID INT  NULL,
PlanVersion INT  NULL,
PlanVersionDate DATETIME  NULL,
PlanVersionTime DATETIME  NULL,
RecordPlanVersionDate DATETIME  NULL,
RecordPlanVersionTime DATETIME  NULL,
Constraint PK_PLANID_PLANS PRIMARY KEY CLUSTERED (PLANID)
);

CREATE TABLE PlanValidation (
PlanValidationID INT IDENTITY(1,1) NOT NULL,
PlanID INT  NOT NULL,
UserID INT  NULL,
UserAction VARCHAR(200)  NULL,
Reason VARCHAR(MAX)  NULL,
DateTime DATETIME  NULL,
Result VARCHAR(500)  NULL,
Program VARCHAR(255)  NULL,
AreaPlanReimbursementID INT  NULL,
AreaPlanID INT  NULL,
ChapterName VARCHAR(100)  NULL,
ChapterEntityID INT  NULL,
PageName VARCHAR(100)  NULL,
EntityID INT  NULL,
Constraint PK_PlanValidationID_PlanValidation PRIMARY KEY CLUSTERED (PlanValidationID)
);

CREATE TABLE PlanVersion (
PlanVersionID INT IDENTITY(1,1) NOT NULL,
PlanID INT  NOT NULL,
PlanVersion INT  NOT NULL,
PlanVersionDateTime DATETIME  NULL,
PlanHistoryID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PlanVersionID_PlanVersion PRIMARY KEY CLUSTERED (PlanVersionID)
);

CREATE TABLE PlanVersionChildTable (
PlanVersionChildTableID INT IDENTITY(1,1) NOT NULL,
PlanVersionID INT  NOT NULL,
TableName VARCHAR(150)  NULL,
TableEntityID INT  NULL,
TableHistoryID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PlanVersionChildTableID_PlanVersionChildTable PRIMARY KEY CLUSTERED (PlanVersionChildTableID)
);

CREATE TABLE POREQUEST (
PO INT  NOT NULL,
CASENO NUMERIC(10,0)  NULL,
VENDORID NUMERIC(10,0)  NULL,
BEGINDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
FUNDCODE VARCHAR(25)  NULL,
FIPSCODE VARCHAR(15)  NULL,
MAXAMT VARCHAR(8)  NULL,
FYEAR INT  NULL,
DATETIMESTAMP DATETIME  NULL,
POENCUMBEREDAMT NUMERIC(19,4)  NULL,
FIRSTAUTHORIZATION NUMERIC(10,0)  NULL,
SECONDAUTHORIZATION NUMERIC(10,0)  NULL,
THIRDAUTHORIZATION NUMERIC(10,0)  NULL,
FIRSTSIGNATURE VARCHAR(10)  NULL,
SECSIGNATURE VARCHAR(10)  NULL,
THIRDSIGNATURE VARCHAR(10)  NULL,
FIRSTDTS DATETIME  NULL,
SECDTS DATETIME  NULL,
THIRDDTS DATETIME  NULL,
AUTHDATE DATETIME  NULL,
CONTRACTTYPE VARCHAR(25)  NULL,
REQUESTSTATUS VARCHAR(20)  NULL,
APPROVESTATUS VARCHAR(20)  NULL,
UNIT VARCHAR(10)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE POServicesReasons (
POServicesReasonsID INT IDENTITY(1,1) NOT NULL,
LinkedTable VARCHAR(50)  NOT NULL,
LinkedKey INT  NOT NULL,
ValidCodeFlag BIT  NULL,
ReasonCode VARCHAR(100)  NULL,
ReasonText VARCHAR(MAX)  NULL,
FollowUpCode VARCHAR(100)  NULL,
Datetimestamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_POServicesReasonsID_POServicesReasons PRIMARY KEY CLUSTERED (POServicesReasonsID)
);

CREATE TABLE PrimaryOccupations (
Code VARCHAR(20)  NOT NULL,
Title VARCHAR(200)  NOT NULL
);

CREATE TABLE Privacy (
PrivacyID INT IDENTITY(1,1) NOT NULL,
OpenID INT  NULL,
PrivacyType VARCHAR(100)  NULL,
PrivacyConsent INT  NULL,
PrivacyROI VARCHAR(100)  NULL,
EffectiveDate DATETIME  NULL,
ExpirationDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
RevokedDate DATETIME  NULL,
RevokedBy INT  NULL,
RevokedReason VARCHAR(100)  NULL,
RevokedReasonDesc VARCHAR(MAX)  NULL,
GenericText1 VARCHAR(500)  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericWorker1 INT  NULL,
GenericWorker2 INT  NULL,
GenericWorker3 INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PrivacyID_Privacy PRIMARY KEY CLUSTERED (PrivacyID)
);

CREATE TABLE PrivacyDesignee (
PrivacyDesigneeID INT IDENTITY(1,1) NOT NULL,
PrivacyID INT  NOT NULL,
DesigneeType VARCHAR(100)  NULL,
DesigneeVendorID INT  NULL,
DesigneeMemberID INT  NULL,
PermissionType VARCHAR(100)  NULL,
EffectiveDate DATETIME  NULL,
ExpirationDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
RevokedDate DATETIME  NULL,
RevokedBy INT  NULL,
RevokedReason VARCHAR(100)  NULL,
RevokedReasonDesc VARCHAR(MAX)  NULL,
GenericText1 VARCHAR(500)  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericWorker1 INT  NULL,
GenericWorker2 INT  NULL,
GenericWorker3 INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PrivacyDesigneeID_PrivacyDesignee PRIMARY KEY CLUSTERED (PrivacyDesigneeID)
);

CREATE TABLE PrivacyDetReview (
PrivacyDetReviewID INT IDENTITY(1,1) NOT NULL,
AssessID INT  NULL,
Assessment VARCHAR(50)  NULL,
Scale VARCHAR(1000)  NULL,
ScaleID INT  NULL,
Item VARCHAR(100)  NULL,
SecID VARCHAR(15)  NULL,
QuestionID VARCHAR(15)  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_PrivacyDetReviewID_PrivacyDetReview PRIMARY KEY CLUSTERED (PrivacyDetReviewID)
);

CREATE TABLE PrivacyReview (
AssessID INT IDENTITY(1,1) NOT NULL,
PrivacyID INT  NOT NULL,
ScreenDesignID INT  NOT NULL,
Assessment VARCHAR(50)  NOT NULL,
Review VARCHAR(100)  NULL,
ReviewDate DATETIME  NULL,
Rater INT  NULL,
Status VARCHAR(100)  NULL,
ApprovedBy INT  NULL,
ApprovedDate DATETIME  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_AssessID_PrivacyReview PRIMARY KEY CLUSTERED (AssessID)
);

CREATE TABLE ProjectCodes (
Project VARCHAR(5)  NOT NULL,
[Index] VARCHAR(10)  NOT NULL,
FiscalYear VARCHAR(4)  NOT NULL,
Active INT  NULL
);

CREATE TABLE ProviderAdjustment (
ProviderAdjustmentID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
AdjustmentDate DATETIME  NOT NULL,
Amount VARCHAR(8)  NOT NULL,
FundCode VARCHAR(25)  NOT NULL,
PayerID INT  NOT NULL,
ISComboCodeID INT  NOT NULL,
Status VARCHAR(100)  NOT NULL,
ValidationStatus VARCHAR(200)  NULL,
PVLogID INT  NULL,
VoucherDetailID INT  NULL,
SecondaryVoucherDetailID INT  NULL,
AdjustmentReason VARCHAR(100)  NULL,
AdjustmentIdentifier VARCHAR(30)  NULL,
AdjustmentDescription VARCHAR(100)  NULL,
FileName VARCHAR(150)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PrimaryAmount VARCHAR(8)  NULL,
SecondaryAmount VARCHAR(8)  NULL,
Suppress BIT  NOT NULL,
PrimaryISComboCodeID INT  NULL,
RANumber VARCHAR(100)  NULL,
ProviderIdentifier VARCHAR(100)  NULL,
Constraint PK_ProviderAdjustmentID_ProviderAdjustment PRIMARY KEY CLUSTERED (ProviderAdjustmentID)
);

CREATE TABLE ProviderGroupWorkers (
ProviderGroupWorkersID INT IDENTITY(1,1) NOT NULL,
MemberID INT  NOT NULL,
VendorGroupID INT  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Constraint PK_ProviderGroupWorkersID_ProviderGroupWorkers PRIMARY KEY CLUSTERED (ProviderGroupWorkersID)
);

CREATE TABLE ProviderPackageLink (
ProviderPackageLinkID INT IDENTITY(1,1) NOT NULL,
LookupCodesMastID INT  NOT NULL,
VendorID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ProviderPackageLinkID_ProviderPackageLink PRIMARY KEY CLUSTERED (ProviderPackageLinkID)
);

CREATE TABLE ProviderQueue (
ProviderQueueID INT IDENTITY(1,1) NOT NULL,
ProviderID INT  NOT NULL,
ProviderNAME VARCHAR(500)  NOT NULL,
Constraint PK_ProviderQueueID_ProviderQueue PRIMARY KEY CLUSTERED (ProviderQueueID)
);

CREATE TABLE ProviderRotation (
ProviderRotationID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
County VARCHAR(100)  NULL,
Category VARCHAR(100)  NULL,
Sort DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ProviderRotationID_ProviderRotation PRIMARY KEY CLUSTERED (ProviderRotationID)
);

CREATE TABLE ProviderServiceCodePackage (
ProviderServiceCodePackageID INT IDENTITY(1,1) NOT NULL,
PackageID INT  NOT NULL,
ServiceCodeUnitCostID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ProviderServiceCodePackageID_ProviderServiceCodePackage PRIMARY KEY CLUSTERED (ProviderServiceCodePackageID)
);

CREATE TABLE PVExportFiles (
PVExportFilesID INT IDENTITY(1,1) NOT NULL,
FileName VARCHAR(100)  NULL,
SeqNumber INT  NULL,
FileType VARCHAR(50)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_PVExportFilesID_PVExportFiles PRIMARY KEY CLUSTERED (PVExportFilesID)
);

CREATE TABLE PVLog (
PVLogID INT IDENTITY(1,1) NOT NULL,
EOPDate DATETIME  NULL,
Status VARCHAR(2000)  NULL,
StartTime DATETIME  NULL,
Success BIT  NULL,
DateTimeStamp DATETIME  NULL,
UserStamp INT  NULL,
Printed BIT  NULL,
PayerID INT  NULL,
MemberID INT  NULL,
FundCode VARCHAR(25)  NULL,
FiscalRegion VARCHAR(100)  NULL,
Deleted BIT  NOT NULL,
Constraint PK_PVLogID_PVLog PRIMARY KEY CLUSTERED (PVLogID)
);

CREATE TABLE PWDSETTINGS (
Expire INT  NOT NULL,
DaysUntilExpires INT  NOT NULL,
LoginsUntilExpires INT  NOT NULL,
Lockout INT  NOT NULL,
LockoutAttempts INT  NOT NULL,
LENGTHREQUIRED INT  NOT NULL,
LENGTH INT  NOT NULL,
NumberOfUpperCase INT  NOT NULL,
NumberOfNumbers INT  NOT NULL,
ReUsePassword INT  NOT NULL,
ReuseAfterDays INT  NOT NULL,
PasswordAsUserName INT  NOT NULL,
PWDSETTINGSID INT IDENTITY(1,1) NOT NULL,
DATETIMESTAMP DATETIME  NULL,
USERSTAMP INT  NULL,
NumberOfSpecials INT  NULL,
NumberOfLowercase INT  NULL,
LockoutDuration INT  NULL,
DaysPwdChangeReminder INT  NULL,
Constraint PK_PWDSETTINGSID_PWDSETTINGS PRIMARY KEY CLUSTERED (PWDSETTINGSID)
);

CREATE TABLE READYTOBILL (
READYTOBILLID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
ACTIVITYID NUMERIC(10,0)  NULL,
PAYERID NUMERIC(10,0)  NULL,
AMOUNT NUMERIC(14,2)  NULL,
CLAIMID NUMERIC(10,0)  NULL,
DATETIMESTAMP DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_READYTOBILLID_READYTOBILL PRIMARY KEY CLUSTERED (READYTOBILLID)
);

CREATE TABLE ReasonsNotMet (
ReasonNotMetID INT IDENTITY(1,1) NOT NULL,
ReasonNotMetCode VARCHAR(10)  NULL,
ReasonNotMetDescription VARCHAR(MAX)  NULL,
Active BIT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReasonNotMetID_ReasonsNotMet PRIMARY KEY CLUSTERED (ReasonNotMetID)
);

CREATE TABLE ReformaEligiblity (
MCOCarrierID VARCHAR(2)  NULL,
MBHOCarrierID VARCHAR(2)  NULL,
Region VARCHAR(2)  NULL,
Municipality VARCHAR(4)  NULL,
ContractNumber VARCHAR(9)  NULL,
DependentCode VARCHAR(2)  NULL,
IDCounter VARCHAR(7)  NULL,
LastName1 VARCHAR(30)  NULL,
LastName2 VARCHAR(30)  NULL,
FirstName VARCHAR(30)  NULL,
MiddleInitial VARCHAR(1)  NULL,
Sex VARCHAR(1)  NULL,
DateofBirth DATETIME  NULL,
SocialSecurity VARCHAR(9)  NULL,
Address1 VARCHAR(100)  NULL,
Address2 VARCHAR(100)  NULL,
City VARCHAR(30)  NULL,
State VARCHAR(100)  NULL,
Zip VARCHAR(5)  NULL,
Zip2 VARCHAR(4)  NULL,
Phone VARCHAR(10)  NULL,
FamilyID VARCHAR(11)  NULL,
FamilyIDSuffix VARCHAR(2)  NULL,
EnrollmentFromDate VARCHAR(8)  NULL,
EnrollmentThroughDate VARCHAR(8)  NULL,
MemberPlan VARCHAR(10)  NULL,
PlanEffectiveDate VARCHAR(8)  NULL,
Copay VARCHAR(8)  NULL,
Deductible VARCHAR(8)  NULL,
PrimaryCareCenter VARCHAR(6)  NULL,
PCPID VARCHAR(10)  NULL,
PCPLicenseNumber VARCHAR(10)  NULL,
Medicare VARCHAR(2)  NULL,
HOHSSN VARCHAR(9)  NULL,
ReformaEligiblityID INT IDENTITY(1,1) NOT NULL,
Constraint PK_ReformaEligiblityID_ReformaEligiblity PRIMARY KEY CLUSTERED (ReformaEligiblityID)
);

CREATE TABLE ReimbursementAdjustment (
ReimbursementAdjustmentID INT IDENTITY(1,1) NOT NULL,
ParentExpenseID INT  NOT NULL,
AdjustmentCategory VARCHAR(100)  NULL,
AdjustmentAmount NUMERIC(19,2)  NULL,
AdjustmentType VARCHAR(150)  NULL,
AdjustmentDescription VARCHAR(500)  NULL,
CreatedBy INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementAdjustmentID_ReimbursementAdjustment PRIMARY KEY CLUSTERED (ReimbursementAdjustmentID)
);

CREATE TABLE ReimbursementAgencyLevelAdjustment (
ReimbursementAgencyLevelAdjustmentID INT IDENTITY(1,1) NOT NULL,
AreaPlanReimbursementID INT  NOT NULL,
RefNumber VARCHAR(50)  NULL,
PayerID INT  NOT NULL,
Description VARCHAR(500)  NULL,
ISComboCodeID INT  NOT NULL,
Amount NUMERIC(19,2)  NULL,
AdjustmentReason VARCHAR(100)  NULL,
Comments VARCHAR(1000)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementAgencyLevelAdjustmentID_ReimbursementAgencyLevelAdjustment PRIMARY KEY CLUSTERED (ReimbursementAgencyLevelAdjustmentID)
);

CREATE TABLE ReimbursementCorrection (
ReimbursementCorrectionID INT IDENTITY(1,1) NOT NULL,
AreaPlanBudgetID INT  NOT NULL,
AreaPlanReimbursementID INT  NOT NULL,
ServiceMonth DATETIME  NOT NULL,
ProgramID INT  NOT NULL,
ServiceID INT  NOT NULL,
ProviderID INT  NOT NULL,
AreaPlanFundingSourceID INT  NOT NULL,
PriorReimbursementID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementCorrectionID_ReimbursementCorrection PRIMARY KEY CLUSTERED (ReimbursementCorrectionID)
);

CREATE TABLE ReimbursementCorrectionProgramExpense (
ReimbursementCorrectionProgramExpenseID INT IDENTITY(1,1) NOT NULL,
ReimbursementCorrectionID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
PriorExpense NUMERIC(19,2)  NULL,
PriorAdjustment NUMERIC(19,2)  NULL,
CurrentExpense NUMERIC(19,2)  NULL,
DefaultReimbursement NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementCorrectionProgramExpenseID_ReimbursementCorrectionProgramExpense PRIMARY KEY CLUSTERED (ReimbursementCorrectionProgramExpenseID)
);

CREATE TABLE ReimbursementCorrectionRevenue (
ReimbursementCorrectionRevenueID INT IDENTITY(1,1) NOT NULL,
ReimbursementCorrectionID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
PriorAmount NUMERIC(19,2)  NULL,
CurrentAmount NUMERIC(19,2)  NULL,
DefaultReimbursement NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementCorrectionRevenueID_ReimbursementCorrectionRevenue PRIMARY KEY CLUSTERED (ReimbursementCorrectionRevenueID)
);

CREATE TABLE ReimbursementCorrectionServiceExpense (
ReimbursementCorrectionServiceExpenseID INT IDENTITY(1,1) NOT NULL,
ReimbursementCorrectionID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
PriorExpense NUMERIC(19,2)  NULL,
PriorAdjustment NUMERIC(19,2)  NULL,
CurrentExpense NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementCorrectionServiceExpenseID_ReimbursementCorrectionServiceExpense PRIMARY KEY CLUSTERED (ReimbursementCorrectionServiceExpenseID)
);

CREATE TABLE ReimbursementCurrentServiceMonth (
ReimbursementCurrentServiceMonthID INT IDENTITY(1,1) NOT NULL,
AreaPlanReimbursementID INT  NOT NULL,
AreaPlanBudgetID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementCurrentServiceMonthID_ReimbursementCurrentServiceMonth PRIMARY KEY CLUSTERED (ReimbursementCurrentServiceMonthID)
);

CREATE TABLE ReimbursementProgramExpenses (
ReimbursementProgramExpensesID INT IDENTITY(1,1) NOT NULL,
ReimbursementCurrentServiceMonthID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
DefaultReimbursement NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementProgramExpensesID_ReimbursementProgramExpenses PRIMARY KEY CLUSTERED (ReimbursementProgramExpensesID)
);

CREATE TABLE ReimbursementRevenue (
ReimbursementRevenueID INT IDENTITY(1,1) NOT NULL,
ReimbursementCurrentServiceMonthID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
Amount NUMERIC(19,2)  NOT NULL,
DefaultReimbursement NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementRevenueID_ReimbursementRevenue PRIMARY KEY CLUSTERED (ReimbursementRevenueID)
);

CREATE TABLE ReimbursementServiceExpenses (
ReimbursementServiceExpensesID INT IDENTITY(1,1) NOT NULL,
ReimbursementCurrentServiceMonthID INT  NOT NULL,
AreaPlanAccountID INT  NOT NULL,
Amount NUMERIC(19,2)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ReimbursementServiceExpensesID_ReimbursementServiceExpenses PRIMARY KEY CLUSTERED (ReimbursementServiceExpensesID)
);

CREATE TABLE RELATEREVIEW (
RECID INT IDENTITY(1,1) NOT NULL,
CASENO INT  NOT NULL,
RELATIONSHIP VARCHAR(100)  NULL,
EMERGENCYCONTACT INT  NULL,
LEGALGUARDIAN INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ASSISTANCE NUMERIC(10,0)  NULL,
EMERGPHONE VARCHAR(16)  NULL,
ALTERNATEID VARCHAR(15)  NULL,
EMPLOYER VARCHAR(50)  NULL,
INCOME VARCHAR(15)  NULL,
TYPEOFRESTRICTION VARCHAR(100)  NULL,
MEMBEROFHOUSEHOLD INT  NULL,
EDUCATIONALSTATUS VARCHAR(50)  NULL,
CURRPLACEMENT VARCHAR(50)  NULL,
LEGALSTATUS VARCHAR(50)  NULL,
HOSIPTALAFFILIATION VARCHAR(25)  NULL,
HARMONYID INT  NULL,
PARTICIPATING VARCHAR(50)  NULL,
RELGENERIC1 VARCHAR(50)  NULL,
RELGENERIC2 VARCHAR(50)  NULL,
RELGENERIC3 INT  NULL,
RELGENERIC4 INT  NULL,
RELGENERIC5 VARCHAR(100)  NULL,
RELGENERIC6 VARCHAR(100)  NULL,
FUNDCODE VARCHAR(25)  NULL,
Active INT  NULL,
AppType VARCHAR(5)  NULL,
TargetVendorID INT  NULL,
TabType VARCHAR(100)  NULL,
IsRelation BIT  NULL,
BeginDate DATETIME  NULL,
EndDate DATETIME  NULL,
UserStamp INT  NOT NULL,
CONTACTID INT  NOT NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericText3 VARCHAR(100)  NULL,
GenericDropDown1 VARCHAR(MAX)  NULL,
GenericDropDown2 VARCHAR(MAX)  NULL,
GenericDropDown3 VARCHAR(MAX)  NULL,
GenericDropDown4 VARCHAR(MAX)  NULL,
GenericDropDown5 VARCHAR(MAX)  NULL,
GenericDropDown6 VARCHAR(MAX)  NULL,
GenericDropDown7 VARCHAR(MAX)  NULL,
GenericDropDown8 VARCHAR(MAX)  NULL,
GenericDropDown9 VARCHAR(MAX)  NULL,
GenericDropDown10 VARCHAR(MAX)  NULL,
VendorID INT  NULL,
Multirelationship VARCHAR(MAX)  NULL,
InfoPathFormStatus BIT  NULL,
InfoPathFormUserStamp INT  NULL,
InfoPathFormCheckOutDate DATETIME  NULL,
PCRouting VARCHAR(100)  NULL,
Constraint PK_RECID_RELATEREVIEW PRIMARY KEY CLUSTERED (RECID)
);

CREATE TABLE RemittanceRemark (
RemittanceRemarkID INT IDENTITY(1,1) NOT NULL,
Level VARCHAR(25)  NOT NULL,
Code VARCHAR(50)  NOT NULL,
Description VARCHAR(100)  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_RemittanceRemarkID_RemittanceRemark PRIMARY KEY CLUSTERED (RemittanceRemarkID)
);

CREATE TABLE ReportLibrary (
ReportLibraryID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
REPID NUMERIC(10,0)  NOT NULL,
CreationDate DATETIME  NULL,
LastRevisionDate DATETIME  NULL,
Revision INT  NULL,
Caseno INT  NOT NULL,
DataTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_ReportLibraryID_ReportLibrary PRIMARY KEY CLUSTERED (ReportLibraryID)
);

CREATE TABLE REPORTSECURITY (
REPORTSECURITYID INT IDENTITY(1,1) NOT NULL,
REPID INT  NOT NULL,
REPGROUP VARCHAR(30)  NOT NULL,
AppType VARCHAR(5)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_REPORTSECURITYID_REPORTSECURITY PRIMARY KEY CLUSTERED (REPORTSECURITYID)
);

CREATE TABLE REPORTSETUP (
REPID INT IDENTITY(1,1) NOT NULL,
REPNAME VARCHAR(75)  NULL,
REPDESC VARCHAR(1000)  NULL,
REPFILE VARCHAR(400)  NULL,
REPACTIVE INT  NULL,
REPSCHEDULE VARCHAR(50)  NULL,
REPTYPE VARCHAR(50)  NULL,
REPCATEGORY VARCHAR(50)  NULL,
AppType VARCHAR(5)  NULL,
DateTimeStamp DATETIME  NOT NULL,
RepEngine VARCHAR(25)  NOT NULL,
UserStamp INT  NOT NULL,
REPMENUTYPE VARCHAR(100)  NULL,
REPIMAGETYPE VARCHAR(100)  NULL,
SaveImage BIT  NOT NULL,
MaxRows INT  NULL,
IgnoreRptParameters BIT  NULL,
UseProgramSearchControl BIT  NULL,
SourceRepInstance VARCHAR(25)  NULL,
AttachReportToIncident BIT  NOT NULL,
Constraint PK_REPID_REPORTSETUP PRIMARY KEY CLUSTERED (REPID)
);

CREATE TABLE Request (
RequestID INT IDENTITY(1,1) NOT NULL,
ServiceType VARCHAR(100)  NULL,
ReviewType VARCHAR(100)  NULL,
RequestType VARCHAR(100)  NULL,
RequestDate DATETIME  NULL,
RequestTime DATETIME  NULL,
RequestMethod VARCHAR(100)  NULL,
WorkQueue VARCHAR(100)  NULL,
Priority VARCHAR(100)  NULL,
Disposition VARCHAR(100)  NULL,
DispositionDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
StatusDate DATETIME  NULL,
Vendorid INT  NULL,
SubmiterLast VARCHAR(100)  NULL,
SubmitterFirst VARCHAR(75)  NULL,
SubmitterPhone VARCHAR(16)  NULL,
SubmitterExtension VARCHAR(10)  NULL,
SubmitterFax VARCHAR(16)  NULL,
SubmitterAddress1 VARCHAR(100)  NULL,
SubmitterAddress2 VARCHAR(100)  NULL,
SubmitterCity VARCHAR(30)  NULL,
SubmitterState VARCHAR(3)  NULL,
SubmitterZip VARCHAR(10)  NULL,
Credentials VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
OpenID INT  NULL,
Caseno INT  NULL,
SecID VARCHAR(15)  NULL,
SSN VARCHAR(11)  NULL,
DOB DATETIME  NULL,
LastName VARCHAR(30)  NULL,
FirstName VARCHAR(30)  NULL,
MiddleName VARCHAR(30)  NULL,
Age VARCHAR(8)  NULL,
Gender VARCHAR(100)  NULL,
MaritalStatus VARCHAR(100)  NULL,
Citizenship VARCHAR(100)  NULL,
LivingArrangements VARCHAR(100)  NULL,
Address1 VARCHAR(100)  NULL,
Address2 VARCHAR(100)  NULL,
City VARCHAR(30)  NULL,
State VARCHAR(3)  NULL,
Zip VARCHAR(10)  NULL,
County VARCHAR(100)  NULL,
Phone VARCHAR(16)  NULL,
Allergies VARCHAR(100)  NULL,
NKA VARCHAR(100)  NULL,
AllerigicReactions VARCHAR(100)  NULL,
Terminate BIT  NULL,
TerminateDate DATETIME  NULL,
TerminateReason VARCHAR(255)  NULL,
DateTimeStamp DATETIME  NULL,
Comments VARCHAR(MAX)  NULL,
SubmitterTraceNumber VARCHAR(50)  NULL,
AppType VARCHAR(5)  NULL,
EmergencyFlag INT  NULL,
RelatedCauses INT  NULL,
DateAccident DATETIME  NULL,
SpecialConsideration INT  NULL,
ReviewerAssigned INT  NULL,
DateAssigned DATETIME  NULL,
LevelofCare VARCHAR(100)  NULL,
Diagnosis VARCHAR(10)  NULL,
ReceivedTime DATETIME  NULL,
DataEntry DATETIME  NULL,
EnteredBy INT  NULL,
LinkedToRequest INT  NULL,
OtherInsurance1 VARCHAR(10)  NULL,
OtherInsurance2 VARCHAR(10)  NULL,
ConsumerEligible INT  NULL,
DateMenstruation DATETIME  NULL,
OnsetDate DATETIME  NULL,
EstimatedDOB DATETIME  NULL,
RequestDueDate DATETIME  NULL,
SubmittedFlag INT  NULL,
SubmittedDate DATETIME  NULL,
NoteID INT  NULL,
OriginalRequestID INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_RequestID_Request PRIMARY KEY CLUSTERED (RequestID)
);

CREATE TABLE ResubQOldSettingsBackup (
PKID INT IDENTITY(1,1) NOT NULL,
PageID INT  NOT NULL,
Constraint PK_PKID_ResubQOldSettingsBackup PRIMARY KEY CLUSTERED (PKID)
);

CREATE TABLE Role (
RoleID INT IDENTITY(1,1) NOT NULL,
GroupID INT  NOT NULL,
Role VARCHAR(1024)  NOT NULL,
EnhancedADA BIT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
AccessLevel INT  NULL,
UserStamp INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NULL,
TwoPartHarmony BIT  NOT NULL,
AllowCrossProgramAccess BIT  NOT NULL,
Active BIT  NOT NULL,
WorkQueue VARCHAR(100)  NULL,
SubmitWorkQueue VARCHAR(100)  NULL,
AllowCrossProgramSearch BIT  NULL,
ShowDischargedClients BIT  NULL,
InquiryEForm VARCHAR(30)  NULL,
SupervisorAuthApprovalLimit NUMERIC(19,4)  NULL,
IncidentQueue VARCHAR(100)  NULL,
AllowCheckOutToInfoPath BIT  NULL,
ShowParticipatingFlag BIT  NULL,
ReportGroup VARCHAR(100)  NULL,
ProviderAdjPermission VARCHAR(28)  NULL,
NoteTypePackage VARCHAR(100)  NULL,
PeopleSearchProgramAccess BIT  NULL,
DisableSAMSPeopleSearch BIT  NULL,
AgencyAdjPermission VARCHAR(100)  NULL,
ConsBudgetAdjPermission VARCHAR(100)  NULL,
PrivacyDesigneeProvPermissions VARCHAR(150)  NOT NULL,
Constraint PK_RoleID_Role PRIMARY KEY CLUSTERED (RoleID)
);

CREATE TABLE Role_Reports (
RoleReportID INT IDENTITY(1,1) NOT NULL,
RoleID INT  NOT NULL,
ReportID INT  NOT NULL,
Zone VARCHAR(50)  NOT NULL,
SequenceOrder INT  NOT NULL,
Constraint PK_RoleReportID_Role_Reports PRIMARY KEY CLUSTERED (RoleReportID)
);

CREATE TABLE ROLECHAPTER (
ROLECHAPTERID INT IDENTITY(1,1) NOT NULL,
ROLEID INT  NULL,
CHAPTERID INT  NULL,
[view] BIT  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NULL,
Constraint PK_ROLECHAPTERID_ROLECHAPTER PRIMARY KEY CLUSTERED (ROLECHAPTERID)
);

CREATE TABLE ROLEFIELDCONTROL (
ROLEFIELDCONTROLID INT IDENTITY(1,1) NOT NULL,
ROLEID INT  NULL,
FIELDCONTROLID INT  NULL,
EDIT BIT  NOT NULL,
ReadOnly BIT  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NULL,
Constraint PK_ROLEFIELDCONTROLID_ROLEFIELDCONTROL PRIMARY KEY CLUSTERED (ROLEFIELDCONTROLID)
);

CREATE TABLE ROLEFUNDCODE (
ROLEFUNDCODEID INT IDENTITY(1,1) NOT NULL,
ROLEID INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NULL,
Constraint PK_ROLEFUNDCODEID_ROLEFUNDCODE PRIMARY KEY CLUSTERED (ROLEFUNDCODEID)
);

CREATE TABLE ROLEPAGE (
ROLEPAGEID INT IDENTITY(1,1) NOT NULL,
ROLEID INT  NOT NULL,
PAGEID INT  NOT NULL,
Edit BIT  NOT NULL,
[Delete] BIT  NOT NULL,
[Add] BIT  NOT NULL,
ReadOnly BIT  NOT NULL,
Userstamp INT  NOT NULL,
Datetimestamp DATETIME  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NULL,
Constraint PK_ROLEPAGEID_ROLEPAGE PRIMARY KEY CLUSTERED (ROLEPAGEID)
);

CREATE TABLE RolePermission (
RolePermissionID INT IDENTITY(1,1) NOT NULL,
PermissionID INT  NOT NULL,
RoleID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_RolePermissionID_RolePermission PRIMARY KEY CLUSTERED (RolePermissionID)
);

CREATE TABLE Roster (
RosterId VARCHAR(16)  NOT NULL,
MemberId INT  NOT NULL,
Name VARCHAR(50)  NOT NULL,
Filters VARCHAR(MAX)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL
);

CREATE TABLE RosterConsumer (
RosterId VARCHAR(16)  NOT NULL,
MemberId INT  NOT NULL,
Consumers VARCHAR(MAX)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL
);

CREATE TABLE RPTPARAMETERS (
PARAMID NUMERIC(10,0)  NOT NULL,
PARAMETERNAME VARCHAR(50)  NULL,
PARAMDESC VARCHAR(255)  NULL,
ACTIVE INT  NULL
);

CREATE TABLE RPTSELPARAMETERS (
RPTSELPARAMID NUMERIC(10,0)  NOT NULL,
RPTID NUMERIC(10,0)  NULL,
PARAMID NUMERIC(10,0)  NULL
);

CREATE TABLE RuleManager (
RuleManagerID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
RuleName VARCHAR(50)  NOT NULL,
FundCode VARCHAR(25)  NULL,
Active INT  NULL,
MemberID INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Action VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NULL,
ApplyToFamilyMembers INT  NULL,
ResponseType INT  NULL,
VendorID INT  NULL,
APPTYPE VARCHAR(5)  NULL,
Disposition VARCHAR(100)  NULL,
RuleDescription VARCHAR(MAX)  NULL,
TableName VARCHAR(100)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_RuleManagerID_RuleManager PRIMARY KEY CLUSTERED (RuleManagerID)
);

CREATE TABLE RuleManagerDetail (
RuleManagerDetailID NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
RuleManagerID NUMERIC(10,0)  NOT NULL,
ScaleID INT  NULL,
ScreenDesignID INT  NULL,
TableName VARCHAR(50)  NULL,
FieldName VARCHAR(50)  NULL,
Question VARCHAR(MAX)  NULL,
Response VARCHAR(MAX)  NULL,
Operator VARCHAR(10)  NULL,
Formula VARCHAR(MAX)  NULL,
AppType VARCHAR(5)  NULL,
Constraint PK_RuleManagerDetailID_RuleManagerDetail PRIMARY KEY CLUSTERED (RuleManagerDetailID)
);

CREATE TABLE SAN (
SanID INT IDENTITY(1,1) NOT NULL,
SanNo VARCHAR(50)  NULL,
CaseNo INT  NOT NULL,
Fundcode VARCHAR(100)  NULL,
Type VARCHAR(100)  NULL,
Reason VARCHAR(100)  NULL,
Status VARCHAR(100)  NULL,
StatusSubmitted BIT  NULL,
Description VARCHAR(100)  NULL,
PlanID INT  NULL,
FiscalYear VARCHAR(100)  NULL,
CreateDate DATETIME  NULL,
SubmissionDate DATETIME  NULL,
DueDate1 DATETIME  NULL,
DueDate2 DATETIME  NULL,
DueDate3 DATETIME  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericLookup4 VARCHAR(100)  NULL,
GenericLookup5 VARCHAR(100)  NULL,
GenericLookup6 VARCHAR(100)  NULL,
GenericLookup7 VARCHAR(100)  NULL,
GenericLookup8 VARCHAR(100)  NULL,
GenericText1 VARCHAR(8000)  NULL,
GenericText2 VARCHAR(8000)  NULL,
GenericText3 VARCHAR(8000)  NULL,
GenericText4 VARCHAR(8000)  NULL,
GenericText5 VARCHAR(8000)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericDate4 DATETIME  NULL,
GenericDate5 DATETIME  NULL,
GenericDate6 DATETIME  NULL,
GenericDate7 DATETIME  NULL,
GenericDate8 DATETIME  NULL,
GenericDate9 DATETIME  NULL,
GenericMultiSelect1 VARCHAR(MAX)  NULL,
GenericMultiSelect2 VARCHAR(MAX)  NULL,
GenericCheckBox1 BIT  NULL,
GenericCheckBox2 BIT  NULL,
Genericnumeric NUMERIC(19,2)  NULL,
ConsumerBudgetID INT  NULL,
LastRefresh VARCHAR(100)  NULL,
AlgorithmAmount NUMERIC(19,2)  NULL,
AmountEncumbered NUMERIC(19,2)  NULL,
AmountAuthorized NUMERIC(19,2)  NULL,
AmountUnencumbered NUMERIC(19,2)  NULL,
AmountUnAuthorized NUMERIC(19,2)  NULL,
AvailableBudget NUMERIC(19,2)  NULL,
AmountPaid NUMERIC(19,2)  NULL,
BudgetSource VARCHAR(500)  NULL,
Reqpropbudget NUMERIC(19,2)  NULL,
Reqpropbudgetincrease NUMERIC(19,2)  NULL,
Reqpropannualbudget NUMERIC(19,2)  NULL,
Reqpropannualincrease NUMERIC(19,2)  NULL,
ReqDifference NUMERIC(19,2)  NULL,
Rev1propbudget NUMERIC(19,2)  NULL,
Rev1propbudgetincrease NUMERIC(19,2)  NULL,
Rev1propannualbudget NUMERIC(19,2)  NULL,
Rev1propannualincrease NUMERIC(19,2)  NULL,
Rev1difference NUMERIC(19,2)  NULL,
Rev2propbudget NUMERIC(19,2)  NULL,
Rev2propbudgetincrease NUMERIC(19,2)  NULL,
Rev2propannualbudget NUMERIC(19,2)  NULL,
Rev2propannualincrease NUMERIC(19,2)  NULL,
Rev2difference NUMERIC(19,2)  NULL,
Rev1recommend VARCHAR(100)  NULL,
Rev1memberid INT  NULL,
Rev1recommenddate DATETIME  NULL,
Rev1Recommendtime DATETIME  NULL,
Rev1Comment1 VARCHAR(5000)  NULL,
Rev1Comment2 VARCHAR(5000)  NULL,
Rev2recommend VARCHAR(100)  NULL,
Rev2memberid INT  NULL,
Rev2recommenddate DATETIME  NULL,
Rev2Recommendtime DATETIME  NULL,
Rev2Comment1 VARCHAR(5000)  NULL,
Rev2Comment2 VARCHAR(5000)  NULL,
Decision VARCHAR(100)  NULL,
Decisionby INT  NULL,
Decisiondate DATETIME  NULL,
Decisiontime DATETIME  NULL,
Justification VARCHAR(100)  NULL,
Approvedbudget VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
RequestDate DATETIME  NULL,
ConsumerBudgetValue NUMERIC(19,2)  NULL,
Valid BIT  NULL,
ReasonForIgnoringValidation VARCHAR(MAX)  NULL,
Constraint PK_SanID_SAN PRIMARY KEY CLUSTERED (SanID)
);

CREATE TABLE SANDetReview (
SANDetReviewID INT IDENTITY(1,1) NOT NULL,
Assessment VARCHAR(50)  NULL,
Scale VARCHAR(255)  NULL,
Item VARCHAR(MAX)  NULL,
Score NUMERIC(10,0)  NULL,
Comments VARCHAR(MAX)  NULL,
YN INT  NULL,
LookupValue VARCHAR(50)  NULL,
ScaleID INT  NOT NULL,
QuestionID VARCHAR(15)  NULL,
SecID VARCHAR(15)  NULL,
AssessID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_SANDetReviewID_SANDetReview PRIMARY KEY CLUSTERED (SANDetReviewID)
);

CREATE TABLE SANOverridingRoles (
SANOverrideRoleID INT IDENTITY(1,1) NOT NULL,
RoleName VARCHAR(255)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Active BIT  NOT NULL,
Constraint PK_SANOverrideRoleID_SANOverridingRoles PRIMARY KEY CLUSTERED (SANOverrideRoleID)
);

CREATE TABLE SANReview (
AssessID INT IDENTITY(1,1) NOT NULL,
Assessment VARCHAR(50)  NULL,
Review VARCHAR(100)  NULL,
NumDaysTilNext INT  NULL,
Score1 NUMERIC(10,0)  NULL,
Score2 NUMERIC(10,0)  NULL,
Rater INT  NULL,
LevelOfNeed INT  NULL,
SystemFactors VARCHAR(50)  NULL,
IndividualFactors VARCHAR(50)  NULL,
Status VARCHAR(100)  NULL,
Risks VARCHAR(50)  NULL,
ReviewDate DATETIME  NULL,
ApprovedBy INT  NULL,
ApproveDate DATETIME  NULL,
ApproveUser VARCHAR(10)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comments VARCHAR(MAX)  NULL,
TriggerID INT  NULL,
TriggerPage VARCHAR(20)  NULL,
EnrollID INT  NULL,
SanID INT  NOT NULL,
ScreenDesignID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
InfoPathFormStatus INT  NULL,
ExpirationDate DATETIME  NULL,
Expired BIT  NULL,
Constraint PK_AssessID_SANReview PRIMARY KEY CLUSTERED (AssessID)
);

CREATE TABLE SANService (
SANServiceID INT IDENTITY(1,1) NOT NULL,
SANServiceStatus VARCHAR(100)  NULL,
SANReviewer VARCHAR(100)  NULL,
Recommendation VARCHAR(100)  NULL,
RecommendationWorker INT  NULL,
RecommendationDate DATETIME  NULL,
RecommendationTime DATETIME  NULL,
Comments2 VARCHAR(2500)  NULL,
Comments3 VARCHAR(2500)  NULL,
PLANSERVICEID INT  NULL,
SANServiceCopiedFrom INT  NULL,
SANID INT  NOT NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
Cost NUMERIC(19,4)  NULL,
VendorID INT  NULL,
UNITCOST NUMERIC(19,4)  NULL,
UNITS NUMERIC(19,4)  NULL,
VServiceID INT  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
ISComboCodeID INT  NULL,
AuthServiceID INT  NULL,
PayorID INT  NULL,
FundingSource VARCHAR(50)  NULL,
UnitsPer NUMERIC(19,2)  NULL,
MaxAmount NUMERIC(19,2)  NULL,
NumberOfPeriods NUMERIC(19,2)  NULL,
UnitsOfMeasure VARCHAR(25)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericCheckBox1 BIT  NULL,
GenericCheckBox2 BIT  NULL,
GenericText1 VARCHAR(MAX)  NULL,
ServiceID INT  NOT NULL,
BaseCost NUMERIC(19,4)  NULL,
UseServiceSchedule BIT  NULL,
ConsumerLiability NUMERIC(9,2)  NULL,
ProvSelectionMethod VARCHAR(100)  NULL,
ProvSelectionDisposition VARCHAR(100)  NULL,
ProvSelectionReason VARCHAR(100)  NULL,
ProvSelectionReasonOther VARCHAR(MAX)  NULL,
GenericDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
UnitsFractional NUMERIC(19,2)  NULL,
COMMENTS278 VARCHAR(264)  NULL,
AnnualizedUnits NUMERIC(19,4)  NULL,
AnnualizedAmount NUMERIC(19,2)  NULL,
Included VARCHAR(10)  NULL,
SANServiceCopies VARCHAR(16)  NULL,
ProviderRateType VARCHAR(100)  NULL,
InternalProgram VARCHAR(100)  NULL,
ConsumerCounty VARCHAR(100)  NULL,
ServiceRatio VARCHAR(100)  NULL,
Constraint PK_SANServiceID_SANService PRIMARY KEY CLUSTERED (SANServiceID)
);

CREATE TABLE SANValidation (
SanValidationID INT IDENTITY(1,1) NOT NULL,
SanID INT  NOT NULL,
UserID INT  NULL,
UserAction VARCHAR(100)  NULL,
Reason VARCHAR(MAX)  NULL,
DateTime DATETIME  NULL,
Result VARCHAR(250)  NULL,
Program VARCHAR(255)  NULL,
Constraint PK_SanValidationID_SANValidation PRIMARY KEY CLUSTERED (SanValidationID)
);

CREATE TABLE SchedulerAlertNotes (
ID INT IDENTITY(1,1) NOT NULL,
PageName VARCHAR(255)  NULL,
ChapterName VARCHAR(255)  NULL,
ChapterEntityId INT  NULL,
ParentEntityId INT  NULL,
VendorId INT  NULL,
AlertNoteId INT  NULL,
NoteDate DATETIME  NULL,
FundCode VARCHAR(200)  NULL,
NoteType VARCHAR(200)  NULL,
USERSTAMP INT  NULL,
DateTimeStamp DATETIME  NULL,
Constraint PK_ID_SchedulerAlertNotes PRIMARY KEY CLUSTERED (ID)
);

CREATE TABLE ScreenCatalog (
ScreenCatalogID INT IDENTITY(1,1) NOT NULL,
CatalogName VARCHAR(255)  NOT NULL,
ControlType VARCHAR(50)  NOT NULL,
Active BIT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ScreenCatalogID_ScreenCatalog PRIMARY KEY CLUSTERED (ScreenCatalogID)
);

CREATE TABLE ScreenCatalogResponse (
ScreenCatalogResponseID INT IDENTITY(1,1) NOT NULL,
ScreenCatalogID INT  NOT NULL,
Response VARCHAR(890)  NULL,
SecondaryValue VARCHAR(15)  NULL,
ValueID VARCHAR(15)  NULL,
SortOrder INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
NeedCodeID INT  NULL,
Constraint PK_ScreenCatalogResponseID_ScreenCatalogResponse PRIMARY KEY CLUSTERED (ScreenCatalogResponseID)
);

CREATE TABLE SCREENCONSTANTS (
SCREENCONSTANTID INT IDENTITY(1,1) NOT NULL,
SCREENCONSTANTNAME VARCHAR(255)  NOT NULL,
VALUE VARCHAR(MAX)  NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_SCREENCONSTANTID_SCREENCONSTANTS PRIMARY KEY CLUSTERED (SCREENCONSTANTID)
);

CREATE TABLE SCREENDESIGN (
SCREENDESIGNID INT  NOT NULL,
SCREENDESIGNNAME VARCHAR(50)  NOT NULL,
SCREENDESIGNHELP VARCHAR(MAX)  NULL,
SCREENDESIGNCONTROLTIP VARCHAR(255)  NULL,
ACTIVE INT  NULL,
SCREENTYPE VARCHAR(50)  NULL,
SCREENCATEGORY VARCHAR(100)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
TRIGGERSCREEN VARCHAR(50)  NULL,
TRIGGEREVENT VARCHAR(50)  NULL,
SCREENSELECT INT  NULL,
VIEWNAME VARCHAR(100)  NULL,
STATUS VARCHAR(100)  NULL,
AppType VARCHAR(5)  NULL,
MaxDocNum INT  NULL,
Retired INT  NULL,
Confidential INT  NULL,
UserStamp INT  NOT NULL,
ConfigPackageTypeId INT  NOT NULL,
RequiresSupervisoryApproval BIT  NULL,
ScreenID VARCHAR(15)  NULL,
AllowCheckOutToInfoPath BIT  NULL,
FundCode VARCHAR(MAX)  NULL,
SecondInstance VARCHAR(10)  NULL,
ExpirationType VARCHAR(100)  NULL,
ExpirationDays INT  NULL,
EnableSuggestedSrvs BIT  NOT NULL,
SuggestedSrvsSproc VARCHAR(255)  NULL,
ConfirmCopiedResponse VARCHAR(255)  NULL,
ExpiredInactiveStatus VARCHAR(255)  NULL
);

CREATE TABLE ScreenDesignConfigPackage (
ScreenDesignConfigPackageID INT IDENTITY(1,1) NOT NULL,
ScreenDesignID INT  NOT NULL,
PackageID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Restricted BIT  NOT NULL,
IsReadOnly BIT  NOT NULL,
Constraint PK_ScreenDesignConfigPackageID_ScreenDesignConfigPackage PRIMARY KEY CLUSTERED (ScreenDesignConfigPackageID)
);

CREATE TABLE SCREENDESIGNCONTROLS (
SCREENDESIGNCONTROLID INT IDENTITY(1,1) NOT NULL,
ControlScreenScale VARCHAR(200)  NULL,
IsProgressbarControl BIT  NULL,
ApplicationName VARCHAR(50)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_SCREENDESIGNCONTROLID_SCREENDESIGNCONTROLS PRIMARY KEY CLUSTERED (SCREENDESIGNCONTROLID)
);

CREATE TABLE SCREENDESIGNPENDING (
SCREENDESIGNID INT IDENTITY(1,1) NOT NULL,
SCREENDESIGNNAME VARCHAR(50)  NOT NULL,
SCREENDESIGNHELP VARCHAR(MAX)  NULL,
SCREENDESIGNCONTROLTIP VARCHAR(255)  NULL,
ACTIVE INT  NULL,
SCREENTYPE VARCHAR(50)  NULL,
SCREENCATEGORY VARCHAR(100)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
TRIGGERSCREEN VARCHAR(50)  NULL,
TRIGGEREVENT VARCHAR(50)  NULL,
SCREENSELECT INT  NULL,
VIEWNAME VARCHAR(100)  NULL,
STATUS VARCHAR(100)  NULL,
AppType VARCHAR(5)  NULL,
MaxDocNum INT  NULL,
Retired INT  NULL,
Confidential INT  NULL,
UserStamp INT  NOT NULL,
ConfigPackageTypeId INT  NOT NULL,
RequiresSupervisoryApproval BIT  NULL,
ScreenID VARCHAR(15)  NULL,
AllowCheckOutToInfoPath BIT  NULL,
FundCode VARCHAR(MAX)  NULL,
SecondInstance VARCHAR(10)  NULL,
ExpirationType VARCHAR(100)  NULL,
ExpirationDays INT  NULL,
EnableSuggestedSrvs BIT  NOT NULL,
SuggestedSrvsSproc VARCHAR(255)  NULL,
ConfirmCopiedResponse VARCHAR(255)  NULL,
ExpiredInactiveStatus VARCHAR(255)  NULL,
Constraint PK_SCREENDESIGNID_SCREENDESIGNPENDING PRIMARY KEY CLUSTERED (SCREENDESIGNID)
);

CREATE TABLE ScreenLookupChains (
ScreenLookupChainsID INT  NOT NULL,
ScreenScaleIDPrimary INT  NOT NULL,
ScreenScaleIDSecondary INT  NOT NULL,
LookupIDPrimary INT  NOT NULL,
LookupIDSecondary INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE ScreenLookupChainsPending (
ScreenLookupChainsPendingID INT IDENTITY(1,1) NOT NULL,
ScreenScaleIDPrimary INT  NOT NULL,
ScreenScaleIDSecondary INT  NOT NULL,
LookupIDPrimary INT  NOT NULL,
LookupIDSecondary INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ScreenLookupChainsPendingID_ScreenLookupChainsPending PRIMARY KEY CLUSTERED (ScreenLookupChainsPendingID)
);

CREATE TABLE SCREENLOOKUPS (
SCREENSCALEID INT  NOT NULL,
SCREENLOOKUP VARCHAR(890)  NULL,
ACTIVE INT  NULL,
SECONDARYVALUE VARCHAR(15)  NULL,
SORTORDER INT  NULL,
SCREENLOOKUPID INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
NeedCodeID INT  NULL,
ValueID VARCHAR(15)  NULL,
NoneOfTheAbove BIT  NULL
);

CREATE TABLE SCREENLOOKUPSPENDING (
SCREENSCALEID INT  NOT NULL,
SCREENLOOKUP VARCHAR(890)  NULL,
ACTIVE INT  NULL,
SECONDARYVALUE VARCHAR(15)  NULL,
SORTORDER INT  NULL,
SCREENLOOKUPID INT IDENTITY(1,1) NOT NULL,
DateTimestamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
NeedCodeID INT  NULL,
ValueID VARCHAR(15)  NULL,
NoneOfTheAbove BIT  NULL,
Constraint PK_SCREENLOOKUPID_SCREENLOOKUPSPENDING PRIMARY KEY CLUSTERED (SCREENLOOKUPID)
);

CREATE TABLE SCREENQUESTIONS (
SCREENSCALEID INT  NOT NULL,
SCREENDESIGNID INT  NOT NULL,
SCREENSCALE VARCHAR(1000)  NULL,
CONTROLSCREENSCALE VARCHAR(50)  NULL,
SCREENSORTORDER INT  NULL,
SCREENCOLUMN INT  NULL,
HELPLINE VARCHAR(1000)  NULL,
REQUIRED INT  NULL,
HIGHVALUE INT  NULL,
LOWVALUE INT  NULL,
WIDTHSCALE INT  NULL,
HEIGHTSCALE INT  NULL,
NUMBUTTONS INT  NULL,
BEGINLEGEND VARCHAR(MAX)  NULL,
ENDLEGEND VARCHAR(100)  NULL,
SECONDARYCODE INT  NULL,
HEADERCOLOR VARCHAR(25)  NULL,
FONTCOLOR VARCHAR(25)  NULL,
FONTSTYLE VARCHAR(50)  NULL,
FONTSIZE VARCHAR(10)  NULL,
TEXTALIGNMENT VARCHAR(10)  NULL,
LINKVALUE INT  NULL,
HIGHERLOWERLINK VARCHAR(50)  NULL,
LINKSCREENSCALEID INT  NULL,
INCLUDEINSCORE INT  NULL,
ACTIVE INT  NULL,
ANSWERSIZE INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
QUESTIONID VARCHAR(15)  NULL,
DefaultValue VARCHAR(128)  NULL,
ReadOnlyState VARCHAR(8)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
CheckedScale DECIMAL(18,2)  NULL,
UnCheckedScale DECIMAL(18,2)  NULL,
WrapControl INT  NULL,
Show INT  NULL,
CheckedScaleNeedCodeID INT  NULL,
UnCheckedScaleNeedCodeID INT  NULL,
ScreenCatalogID INT  NULL,
ExternalSource BIT  NULL,
DemographicLookupField VARCHAR(255)  NULL,
SyncBackToDemographics VARCHAR(20)  NULL,
FilterByProgram BIT  NULL,
PlaceField VARCHAR(30)  NULL,
PlaceSection VARCHAR(50)  NULL,
PlaceAllowOverride BIT  NULL,
UsePlacesControl BIT  NULL,
PreventFutureDate BIT  NULL,
ShowCharacterCount BIT  NULL,
EnrollmentLookupField VARCHAR(255)  NULL,
SyncBackToEnrollments VARCHAR(20)  NULL,
MaxNoOfRecordsAllowed INT  NULL,
InitialRequired VARCHAR(10)  NULL,
SignatureTermsTitle VARCHAR(100)  NULL,
SignatureTermsRequired VARCHAR(10)  NULL,
SignatureTermsType VARCHAR(30)  NULL,
MaximumNoOfResponse INT  NULL,
ConfirmCopiedResponse VARCHAR(255)  NULL,
ExpiredInactiveStatus VARCHAR(255)  NULL,
ApiIntegration INT  NULL
);

CREATE TABLE SCREENQUESTIONSPENDING (
SCREENSCALEID INT IDENTITY(1,1) NOT NULL,
SCREENDESIGNID INT  NOT NULL,
SCREENSCALE VARCHAR(1000)  NULL,
CONTROLSCREENSCALE VARCHAR(50)  NULL,
SCREENSORTORDER INT  NULL,
SCREENCOLUMN INT  NULL,
HELPLINE VARCHAR(1000)  NULL,
REQUIRED INT  NULL,
HIGHVALUE INT  NULL,
LOWVALUE INT  NULL,
WIDTHSCALE INT  NULL,
HEIGHTSCALE INT  NULL,
NUMBUTTONS INT  NULL,
BEGINLEGEND VARCHAR(MAX)  NULL,
ENDLEGEND VARCHAR(100)  NULL,
SECONDARYCODE INT  NULL,
HEADERCOLOR VARCHAR(25)  NULL,
FONTCOLOR VARCHAR(25)  NULL,
FONTSTYLE VARCHAR(50)  NULL,
FONTSIZE VARCHAR(10)  NULL,
TEXTALIGNMENT VARCHAR(10)  NULL,
LINKVALUE INT  NULL,
HIGHERLOWERLINK VARCHAR(50)  NULL,
LINKSCREENSCALEID INT  NULL,
INCLUDEINSCORE INT  NULL,
ACTIVE INT  NULL,
ANSWERSIZE INT  NULL,
DATETIMESTAMP DATETIME  NULL,
QUESTIONID VARCHAR(15)  NULL,
DefaultValue VARCHAR(128)  NULL,
ReadOnlyState VARCHAR(8)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
CheckedScale DECIMAL(18,2)  NULL,
UnCheckedScale DECIMAL(18,2)  NULL,
WrapControl INT  NULL,
Show INT  NULL,
CheckedScaleNeedCodeID INT  NULL,
UnCheckedScaleNeedCodeID INT  NULL,
ScreenCatalogID INT  NULL,
ExternalSource BIT  NULL,
DemographicLookupField VARCHAR(255)  NULL,
SyncBackToDemographics VARCHAR(20)  NULL,
FilterByProgram BIT  NULL,
PlaceField VARCHAR(30)  NULL,
PlaceSection VARCHAR(50)  NULL,
PlaceAllowOverride BIT  NULL,
UsePlacesControl BIT  NULL,
PreventFutureDate BIT  NULL,
ShowCharacterCount BIT  NULL,
EnrollmentLookupField VARCHAR(255)  NULL,
SyncBackToEnrollments VARCHAR(20)  NULL,
MaxNoOfRecordsAllowed INT  NULL,
InitialRequired VARCHAR(10)  NULL,
SignatureTermsTitle VARCHAR(100)  NULL,
SignatureTermsRequired VARCHAR(10)  NULL,
SignatureTermsType VARCHAR(30)  NULL,
MaximumNoOfResponse INT  NULL,
ConfirmCopiedResponse VARCHAR(255)  NULL,
ExpiredInactiveStatus VARCHAR(255)  NULL,
ApiIntegration INT  NULL,
Constraint PK_SCREENSCALEID_SCREENQUESTIONSPENDING PRIMARY KEY CLUSTERED (SCREENSCALEID)
);

CREATE TABLE SCREENSIGNATORY (
SCREENSCALEID INT  NOT NULL,
SIGNEEROLE VARCHAR(255)  NULL,
FIRSTNAMEREQ VARCHAR(15)  NULL,
LASTNAMEREQ VARCHAR(15)  NULL,
TITLEREQ VARCHAR(15)  NULL,
EMAILREQ VARCHAR(15)  NULL,
PHONEREQ VARCHAR(15)  NULL,
ORGREQ VARCHAR(15)  NULL,
SMSAUTHENABLED VARCHAR(15)  NULL,
EMAILAUTHENABLED VARCHAR(15)  NULL,
CREDENTIALAUTHENABLED VARCHAR(15)  NULL,
SCREENSIGNID INT IDENTITY(1,1) NOT NULL,
DateTimestamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
NOOFSIGNREQ INT  NULL,
Constraint PK_SCREENSIGNID_SCREENSIGNATORY PRIMARY KEY CLUSTERED (SCREENSIGNID)
);

CREATE TABLE SCREENSIGNATORYPENDING (
SCREENSCALEID INT  NOT NULL,
SIGNEEROLE VARCHAR(255)  NULL,
FIRSTNAMEREQ VARCHAR(15)  NULL,
LASTNAMEREQ VARCHAR(15)  NULL,
TITLEREQ VARCHAR(15)  NULL,
EMAILREQ VARCHAR(15)  NULL,
PHONEREQ VARCHAR(15)  NULL,
ORGREQ VARCHAR(15)  NULL,
SMSAUTHENABLED VARCHAR(15)  NULL,
EMAILAUTHENABLED VARCHAR(15)  NULL,
CREDENTIALAUTHENABLED VARCHAR(15)  NULL,
SCREENSIGNID INT IDENTITY(1,1) NOT NULL,
DateTimestamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
NOOFSIGNREQ INT  NULL,
Constraint PK_SCREENSIGNID_SCREENSIGNATORYPENDING PRIMARY KEY CLUSTERED (SCREENSIGNID)
);

CREATE TABLE Section (
SectionID INT IDENTITY(1,1) NOT NULL,
PageControlID INT  NOT NULL,
Label VARCHAR(255)  NULL,
SortBy INT  NOT NULL,
FieldControlRepeatDirection INT  NOT NULL,
FieldControlRepeatColumns INT  NULL,
CssClass VARCHAR(50)  NULL,
SectionLabelVisible BIT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
SectionName VARCHAR(255)  NOT NULL,
Constraint PK_SectionID_Section PRIMARY KEY CLUSTERED (SectionID)
);

CREATE TABLE SectionMenu (
SectionMenuID INT IDENTITY(1,1) NOT NULL,
MenuID INT  NOT NULL,
SectionID INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Visible BIT  NOT NULL,
Constraint PK_SectionMenuID_SectionMenu PRIMARY KEY CLUSTERED (SectionMenuID)
);

CREATE TABLE SECUREGROUPS (
GROUPID NUMERIC(10,0)  NOT NULL,
GROUPNAME VARCHAR(50)  NULL,
GROUPSECURITY VARCHAR(50)  NULL,
GROUPASSESSMENT VARCHAR(50)  NULL,
GROUPPLANREVIEW VARCHAR(50)  NULL,
GROUPPROVASSESSMENT VARCHAR(50)  NULL,
GROUPWORKERASSESSMENT VARCHAR(50)  NULL,
GROUPNOTES VARCHAR(50)  NULL,
GROUPINCIDENTS VARCHAR(50)  NULL,
DATETIMESTAMP DATETIME  NULL
);

CREATE TABLE SECURITY (
SECUSERID VARCHAR(100)  NULL,
SECUREID INT  NOT NULL,
SECLEVEL INT  NULL,
SECVERSION INT  NULL,
USERID INT  NULL,
SECURITYID INT IDENTITY(1,1) NOT NULL,
Constraint PK_SECURITYID_SECURITY PRIMARY KEY CLUSTERED (SECURITYID)
);

CREATE TABLE SecurityQuestions (
SecurityQuestionID INT IDENTITY(1,1) NOT NULL,
Question VARCHAR(MAX)  NULL,
SORTORDER INT  NULL,
ACTIVE INT  NULL,
AppType VARCHAR(5)  NULL,
TwoPartReadOnly INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_SecurityQuestionID_SecurityQuestions PRIMARY KEY CLUSTERED (SecurityQuestionID)
);

CREATE TABLE ServiceCodeCliaLabCode (
ServiceCodeCliaLabCodeID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
LabCode VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
Enddate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServiceCodeCliaLabCodeID_ServiceCodeCliaLabCode PRIMARY KEY CLUSTERED (ServiceCodeCliaLabCodeID)
);

CREATE TABLE SERVICECODECOPAY (
SERVICEID INT  NOT NULL,
COPAYTYPE VARCHAR(50)  NOT NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
SERVICECODECOPAYID INT IDENTITY(1,1) NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_SERVICECODECOPAYID_SERVICECODECOPAY PRIMARY KEY CLUSTERED (SERVICECODECOPAYID)
);

CREATE TABLE ServiceCodeCredentials (
ServiceCodeCredentialID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
Credential VARCHAR(50)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Constraint PK_ServiceCodeCredentialID_ServiceCodeCredentials PRIMARY KEY CLUSTERED (ServiceCodeCredentialID)
);

CREATE TABLE ServiceCodeDiagCode (
ServiceCodeDiagCodeID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
StartDate DATETIME  NULL,
Enddate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
DiagCodesID INT  NOT NULL,
Constraint PK_ServiceCodeDiagCodeID_ServiceCodeDiagCode PRIMARY KEY CLUSTERED (ServiceCodeDiagCodeID)
);

CREATE TABLE ServiceCodeISO (
ServiceCodeISOID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
CopayAmount NUMERIC(19,4)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
UserStamp INT  NOT NULL,
CopayType VARCHAR(100)  NULL,
AllowedAmount NUMERIC(19,2)  NULL,
ISComboCodeID INT  NOT NULL,
GenericText1 VARCHAR(50)  NULL,
Constraint PK_ServiceCodeISOID_ServiceCodeISO PRIMARY KEY CLUSTERED (ServiceCodeISOID)
);

CREATE TABLE ServiceCodeModifier (
ServiceCodeModifier INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
ModifierCode VARCHAR(100)  NOT NULL,
StartDate DATETIME  NULL,
Enddate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServiceCodeModifier_ServiceCodeModifier PRIMARY KEY CLUSTERED (ServiceCodeModifier)
);

CREATE TABLE ServiceCodePackages (
ServiceID INT  NOT NULL,
Package VARCHAR(100)  NULL,
DefaultUnits NUMERIC(10,0)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
MaxUnits NUMERIC(10,0)  NULL,
MaxDuration NUMERIC(10,0)  NULL,
ServiceCodePackagesID INT IDENTITY(1,1) NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ServiceCodePackagesID_ServiceCodePackages PRIMARY KEY CLUSTERED (ServiceCodePackagesID)
);

CREATE TABLE ServiceCodePlaceService (
ServiceID INT  NOT NULL,
PlaceOfService VARCHAR(100)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
SERVICECODEPLACESERVICEID INT IDENTITY(1,1) NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_SERVICECODEPLACESERVICEID_ServiceCodePlaceService PRIMARY KEY CLUSTERED (SERVICECODEPLACESERVICEID)
);

CREATE TABLE ServiceCodeProvSpecialty (
ServiceCodeProvSpecialtyID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
SpecialityCode VARCHAR(100)  NOT NULL,
StartDate DATETIME  NULL,
Enddate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServiceCodeProvSpecialtyID_ServiceCodeProvSpecialty PRIMARY KEY CLUSTERED (ServiceCodeProvSpecialtyID)
);

CREATE TABLE ServiceCodeProvType (
ServiceCodeProvTypeID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
ProviderType VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServiceCodeProvTypeID_ServiceCodeProvType PRIMARY KEY CLUSTERED (ServiceCodeProvTypeID)
);

CREATE TABLE SERVICECODES (
SERVICEID INT IDENTITY(1,1) NOT NULL,
SERVICECODE VARCHAR(25)  NOT NULL,
UNITTYPE VARCHAR(100)  NOT NULL,
SERVICE VARCHAR(100)  NOT NULL,
SECONDARYCODE VARCHAR(25)  NOT NULL,
SERVICECATEGORY VARCHAR(100)  NULL,
SERVICETYPE VARCHAR(100)  NULL,
INTENSITY VARCHAR(30)  NULL,
ACTIVE BIT  NOT NULL,
LEVELOFNEED INT  NULL,
EFFECTIVEDATE DATETIME  NULL,
STATECODEA VARCHAR(12)  NULL,
STATECODEB VARCHAR(12)  NULL,
HIGHAGE VARCHAR(8)  NULL,
LOWAGE VARCHAR(8)  NULL,
TAXABLE BIT  NULL,
EXCLUDEFRCHECKS BIT  NULL,
BILLINGRULE INT  NULL,
ROLLFOWARDMONTHLY BIT  NULL,
REQUIRENOTE INT  NULL,
DIVIDEBYUNITCALC VARCHAR(5)  NULL,
ROUNDRULEUNITCALC VARCHAR(100)  NULL,
INVOICEGROUP VARCHAR(50)  NULL,
BILLABLE BIT  NULL,
NOTETYPE VARCHAR(50)  NULL,
AUTHREQU BIT  NULL,
ROUNDDECIMALS INT  NULL,
ALERTATPERCENT INT  NULL,
ALLOWDUPLICATES BIT  NULL,
MAXUNITSALLOWED INT  NULL,
AUTOPEND BIT  NULL,
CHECKCOPAY BIT  NULL,
ALLOWTOEXCEEDMAX BIT  NULL,
RequiresDiagnosis BIT  NULL,
ROUNDINGRULE VARCHAR(20)  NULL,
ENROLLMENTRULE VARCHAR(20)  NULL,
DateTimeStamp DATETIME  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
CheckPOUnitCost BIT  NULL,
Gender VARCHAR(100)  NULL,
EndDate DATETIME  NULL,
MedicaidCovered BIT  NULL,
MedicareCovered BIT  NULL,
InjuryRelated BIT  NULL,
MultipleSurgeries BIT  NULL,
NursingFacility BIT  NULL,
Sterilization BIT  NULL,
Hysterectomy BIT  NULL,
ReferralRequired BIT  NULL,
Abortion BIT  NULL,
FamilyPlanning BIT  NULL,
EncounterOnly BIT  NULL,
ToothNumber VARCHAR(100)  NULL,
ToothSurface VARCHAR(100)  NULL,
AverageLOS NUMERIC(10,2)  NULL,
OutlierThreshold NUMERIC(10,2)  NULL,
RelativeWeight NUMERIC(10,2)  NULL,
EPSDT BIT  NULL,
TPLAction BIT  NULL,
CLIAProvider VARCHAR(1)  NULL,
LifeTimeServicesIndicator VARCHAR(1)  NULL,
PreCareDays INT  NULL,
PostOpDays INT  NULL,
POSIndicator VARCHAR(1)  NULL,
DiagnosisEditType VARCHAR(1)  NULL,
Comments VARCHAR(MAX)  NULL,
AddDate DATETIME  NULL,
UserStamp INT  NOT NULL,
DESCRIPTION VARCHAR(MAX)  NULL,
AuthAllowed BIT  NOT NULL,
ScreenDesignID INT  NULL,
ServiceCodeAuthType VARCHAR(100)  NULL,
IgnoreServiceTypeFilter BIT  NOT NULL,
TPLServiceCode BIT  NULL,
RequireGroupNote BIT  NOT NULL,
AllowPartialUnits BIT  NOT NULL,
DelayCodeAllowed BIT  NULL,
LOCExempt BIT  NULL,
Keywords VARCHAR(MAX)  NULL,
ApplyRateLogic BIT  NULL,
RateLogicSPROC VARCHAR(MAX)  NULL,
MaxUnitLimit INT  NULL,
UnitLimitFrequency VARCHAR(30)  NULL,
MaxAmountLimit NUMERIC(8,2)  NULL,
AmountLimitFrequency VARCHAR(30)  NULL,
SpecialClaimProcessing VARCHAR(MAX)  NULL,
AdditionalAttributes VARCHAR(MAX)  NULL,
AllowableDistance INT  NULL,
GenericCurrency1 NUMERIC(10,2)  NULL,
GenericCurrency2 NUMERIC(10,2)  NULL,
GenericCurrency3 NUMERIC(10,2)  NULL,
GenericCurrency4 NUMERIC(10,2)  NULL,
PTPByPassModifiers VARCHAR(250)  NULL,
InstitutionalClaimRevenueCode VARCHAR(100)  NULL,
Constraint PK_SERVICEID_SERVICECODES PRIMARY KEY CLUSTERED (SERVICEID)
);

CREATE TABLE ServiceCodeType (
ServiceCodeTypeID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
ServiceTypeCode VARCHAR(100)  NOT NULL,
StartDate DATETIME  NULL,
Enddate DATETIME  NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PrimaryYN BIT  NULL,
Constraint PK_ServiceCodeTypeID_ServiceCodeType PRIMARY KEY CLUSTERED (ServiceCodeTypeID)
);

CREATE TABLE ServiceCodeUnitCost (
ServiceCodeUnitCostID INT IDENTITY(1,1) NOT NULL,
ServiceID INT  NOT NULL,
UnitCost NUMERIC(10,2)  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
FundCode VARCHAR(25)  NULL,
Credential VARCHAR(50)  NULL,
RateType VARCHAR(100)  NULL,
MaxUnits NUMERIC(10,2)  NULL,
Max1 NUMERIC(10,2)  NULL,
Max2 NUMERIC(10,2)  NULL,
UserStamp INT  NOT NULL,
BaseCost NUMERIC(10,2)  NULL,
ProviderRateType VARCHAR(100)  NULL,
InternalProgram VARCHAR(MAX)  NULL,
ConsumerCounty VARCHAR(MAX)  NULL,
ServiceRatio VARCHAR(500)  NULL,
Constraint PK_ServiceCodeUnitCostID_ServiceCodeUnitCost PRIMARY KEY CLUSTERED (ServiceCodeUnitCostID)
);

CREATE TABLE ServicePackageLink (
ServicePackageLinkID INT IDENTITY(1,1) NOT NULL,
LookupCodesMastID INT  NOT NULL,
ServiceID INT  NOT NULL,
ServiceCodeUnitCostID INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ServicePackageLinkID_ServicePackageLink PRIMARY KEY CLUSTERED (ServicePackageLinkID)
);

CREATE TABLE SERVICES (
PO INT  NULL,
MonthNo INT  NOT NULL,
VSERVICEID INT  NOT NULL,
PCOST NUMERIC(19,4)  NULL,
AMOUNT NUMERIC(19,4)  NULL,
UNITS VARCHAR(8)  NULL,
CHECKNO VARCHAR(15)  NULL,
CHECKDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NULL,
MAXUNITSALLOWED INT  NULL,
FY VARCHAR(4)  NULL,
CHECKPRINTED INT  NULL,
SELECTR INT  NULL,
VSELECT INT  NULL,
VDATETIMESTAMP DATETIME  NULL,
VUSERSTAMP VARCHAR(10)  NULL,
VUNITS INT  NULL,
REFUND INT  NULL,
RUNITS INT  NULL,
RAMOUNT NUMERIC(19,4)  NULL,
RDATETIMESTAMP DATETIME  NULL,
RUSERSTAMP VARCHAR(10)  NULL,
IndexCode VARCHAR(10)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
STRATEGYID NUMERIC(10,0)  NULL,
COPAY NUMERIC(19,4)  NULL,
INVOICENO VARCHAR(12)  NULL,
INVOICEDATE DATETIME  NULL,
MON INT  NULL,
TUE INT  NULL,
WED INT  NULL,
THUR INT  NULL,
FRI INT  NULL,
SAT INT  NULL,
SUN INT  NULL,
EFFDATE DATETIME  NULL,
ACCEPTED INT  NULL,
DISCOUNT INT  NULL,
DEGREE VARCHAR(50)  NULL,
APPTYPE VARCHAR(5)  NULL,
EXPORTNO VARCHAR(12)  NULL,
UserStamp INT  NOT NULL,
SERVICESID INT IDENTITY(1,1) NOT NULL,
Constraint PK_SERVICESID_SERVICES PRIMARY KEY CLUSTERED (SERVICESID)
);

CREATE TABLE SERVICES_REQUEST (
PO INT  NULL,
VSERVICEID NUMERIC(10,0)  NOT NULL,
INDEXCODE VARCHAR(10)  NULL,
SUBOBJECT VARCHAR(10)  NULL,
MAXUNITS INT  NOT NULL,
MAXAMT NUMERIC(19,4)  NOT NULL,
COST NUMERIC(19,4)  NOT NULL,
OVERHEAD NUMERIC(19,4)  NULL,
BEGINDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
TERMINATE INT  NULL,
TERMDATE DATETIME  NULL,
TERMBALANCE NUMERIC(19,4)  NULL,
PAID NUMERIC(19,4)  NULL,
BALANCE NUMERIC(19,4)  NULL,
ORDERED INT  NULL,
FUNDSOURCE VARCHAR(10)  NULL,
MAXUNITSMONTH INT  NULL,
DATETIMESTAMP DATETIME  NULL,
STRATEGYID NUMERIC(10,0)  NULL,
MON INT  NULL,
TUE INT  NULL,
WED INT  NULL,
THUR INT  NULL,
FRI INT  NULL,
SAT INT  NULL,
SUN INT  NULL,
EXPMONAMT NUMERIC(19,4)  NULL,
EXPMONTHUNITS INT  NULL,
APPTYPE VARCHAR(5)  NULL,
EXPECTEDTERMDATE DATETIME  NULL,
PROJAMT VARCHAR(8)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE SIGNATORYLISTSETUP (
SIGNEEROLE VARCHAR(255)  NULL,
FIRSTNAMEREQ VARCHAR(15)  NULL,
LASTNAMEREQ VARCHAR(15)  NULL,
TITLEREQ VARCHAR(15)  NULL,
EMAILREQ VARCHAR(15)  NULL,
PHONEREQ VARCHAR(15)  NULL,
ORGREQ VARCHAR(15)  NULL,
SMSAUTHENABLED VARCHAR(15)  NULL,
EMAILAUTHENABLED VARCHAR(15)  NULL,
CREDENTIALAUTHENABLED VARCHAR(15)  NULL,
SIGNATORYID INT IDENTITY(1,1) NOT NULL,
DateTimestamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Active BIT  NULL,
Constraint PK_SIGNATORYID_SIGNATORYLISTSETUP PRIMARY KEY CLUSTERED (SIGNATORYID)
);

CREATE TABLE Signature (
SignatureID INT IDENTITY(1,1) NOT NULL,
Signature VARCHAR(MAX)  NULL,
SignatureDate DATETIME  NOT NULL,
SignatureComments VARCHAR(500)  NULL,
SignatureDeclined BIT  NOT NULL,
SignatureDeclinedReason VARCHAR(255)  NULL,
FIRSTNAME VARCHAR(30)  NOT NULL,
LASTNAME VARCHAR(30)  NOT NULL,
TITLE VARCHAR(100)  NULL,
ORGANIZATION VARCHAR(100)  NULL,
EMAIL VARCHAR(155)  NULL,
PHONE VARCHAR(16)  NULL,
ContactID INT  NULL,
MemberID INT  NULL,
SystemSignature BIT  NOT NULL,
Active BIT  NOT NULL,
SignatureType VARCHAR(50)  NULL,
ExpirationDate DATETIME  NULL,
ImageType VARCHAR(50)  NULL,
ImageSize INT  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
Initials VARCHAR(30)  NULL,
SCREENDESIGNID INT  NULL,
AssessmentID INT  NULL,
RelationID INT  NULL,
Relationship VARCHAR(100)  NULL,
CaseNo INT  NULL,
SignatureDateClient DATETIME  NULL,
ClientTimeZone VARCHAR(150)  NULL,
UserMemberId INT  NULL,
Constraint PK_SignatureID_Signature PRIMARY KEY CLUSTERED (SignatureID)
);

CREATE TABLE SIGNATURESETUP (
SETUPID INT IDENTITY(1,1) NOT NULL,
TERMSTITLE VARCHAR(100)  NULL,
TERMS VARCHAR(50)  NULL,
SIGNATORYLISTID INT  NOT NULL,
INITIALREQ VARCHAR(15)  NULL,
DateTimestamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
RequiredTerms BIT  NULL,
UserMemberId INT  NULL,
Constraint PK_SETUPID_SIGNATURESETUP PRIMARY KEY CLUSTERED (SETUPID)
);

CREATE TABLE SignaturesHSS (
SignatureID INT IDENTITY(1,1) NOT NULL,
Signature VARCHAR(MAX)  NULL,
SignatureDate DATETIME  NOT NULL,
SignatureComments VARCHAR(500)  NULL,
SignatureDeclined BIT  NOT NULL,
SignatureDeclinedReason VARCHAR(255)  NULL,
FIRSTNAME VARCHAR(30)  NOT NULL,
LASTNAME VARCHAR(30)  NOT NULL,
TITLE VARCHAR(100)  NULL,
ORGANIZATION VARCHAR(100)  NULL,
EMAIL VARCHAR(50)  NULL,
PHONE VARCHAR(16)  NULL,
ContactID INT  NULL,
MemberID INT  NULL,
ChapterID INT  NOT NULL,
PageID INT  NOT NULL,
CaseNo INT  NOT NULL,
Active BIT  NOT NULL,
SignatureType VARCHAR(50)  NULL,
ExpirationDate DATETIME  NULL,
ImageType VARCHAR(50)  NULL,
ImageSize INT  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
Initials VARCHAR(30)  NULL,
SignatureDateClient DATETIME  NULL,
ClientTimeZone VARCHAR(150)  NULL,
RelationID INT  NULL,
Relationship VARCHAR(100)  NULL,
EntityID INT  NULL,
UserMemberId INT  NULL,
Constraint PK_SignatureID_SignaturesHSS PRIMARY KEY CLUSTERED (SignatureID)
);

CREATE TABLE SingleWorkerSessionAttendance (
SingleWorkerSessionAttendanceID INT IDENTITY(1,1) NOT NULL,
GroupSeriesWorkerID INT  NOT NULL,
SessionDate DATETIME  NOT NULL,
Attendance VARCHAR(100)  NULL,
Reason VARCHAR(100)  NULL,
Credit INT  NULL,
ExpirationDate DATETIME  NULL,
Comment VARCHAR(1000)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_SingleWorkerSessionAttendanceID_SingleWorkerSessionAttendance PRIMARY KEY CLUSTERED (SingleWorkerSessionAttendanceID)
);

CREATE TABLE SITE (
FUNDCODE VARCHAR(25)  NULL,
FIPSCODE VARCHAR(4)  NULL,
FUNDSOURCE VARCHAR(25)  NULL,
CITYCOUNTY VARCHAR(100)  NULL,
CONTACTNAME VARCHAR(35)  NULL,
CONTACTTITLE VARCHAR(50)  NULL,
CONTACTPHONE VARCHAR(16)  NULL,
STREET VARCHAR(100)  NULL,
CITY VARCHAR(30)  NULL,
STATE VARCHAR(100)  NULL,
ZIP VARCHAR(10)  NULL,
CURRFYEAR INT  NOT NULL,
BEGINNINGPO INT  NULL,
GLACCOUNTCODE VARCHAR(15)  NULL,
GLACCOUNTCODE2 VARCHAR(15)  NULL,
MESSAGEFORPOS VARCHAR(175)  NULL,
MESSAGEFORINVOICES VARCHAR(175)  NULL,
ORGANIZATIONNAME VARCHAR(75)  NULL,
PAYMENTTERMS1 VARCHAR(175)  NULL,
BILLTOSTREET VARCHAR(100)  NULL,
BILLTOCITY VARCHAR(30)  NULL,
BILLTOSTATE VARCHAR(100)  NULL,
BILLTOZIP VARCHAR(11)  NULL,
BILLCONTACTNAME VARCHAR(50)  NULL,
BILLCONTACTTITLE VARCHAR(50)  NULL,
BILLCONTACTPHONE VARCHAR(16)  NULL,
VENDORINVOICESUBMITSTATE VARCHAR(100)  NULL,
VENDORACCEPTANCESTATEMT VARCHAR(255)  NULL,
POSIG1 VARCHAR(100)  NULL,
POSIG2 VARCHAR(100)  NULL,
POSIG3 VARCHAR(100)  NULL,
INVSIG1 VARCHAR(100)  NULL,
INVSIG2 VARCHAR(100)  NULL,
POVSTATE1 VARCHAR(255)  NULL,
POVSTATE2 VARCHAR(255)  NULL,
ATTACHDIR VARCHAR(255)  NULL,
PRGDROPDOWN INT  NULL,
FINANCEAPPROVAL INT  NULL,
WriteOffPayerID NUMERIC(18,0)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
ResourceDropDown INT  NULL,
SITEID INT IDENTITY(1,1) NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_SITEID_SITE PRIMARY KEY CLUSTERED (SITEID)
);

CREATE TABLE SITEBUDGET (
FUNDCODE VARCHAR(25)  NULL,
FY INT  NOT NULL,
EFFECTIVEDATE DATETIME  NOT NULL,
CURRENTBUDGET INT  NULL,
TYPEOFBUDGET VARCHAR(15)  NULL,
MEDICAID NUMERIC(19,4)  NOT NULL,
LOCALMEDICAIDMATCH NUMERIC(19,4)  NOT NULL,
MANDATED NUMERIC(19,4)  NOT NULL,
NONMANDATED NUMERIC(19,4)  NOT NULL,
MEDICAIDPERCENT VARCHAR(8)  NOT NULL,
LOCALMEDICAIDPERCENT VARCHAR(8)  NOT NULL,
STATEBUDGET NUMERIC(19,4)  NOT NULL,
LOCALMATCH NUMERIC(19,4)  NOT NULL,
TOTALBUDGET NUMERIC(19,4)  NULL,
STATEPERCENT VARCHAR(8)  NOT NULL,
LOCALPERCENT VARCHAR(8)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
SITEBUDGETID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_SITEBUDGETID_SITEBUDGET PRIMARY KEY CLUSTERED (SITEBUDGETID)
);

CREATE TABLE SITEFORMS (
FUNDCODE VARCHAR(25)  NULL,
DEMOGRAPHICS1 INT  NULL,
OPENCLOSE1 INT  NULL,
GOALS1 INT  NULL,
SCHEDULE INT  NULL,
FINANCIAL1 INT  NULL,
PAYMENTS1 INT  NULL,
JUVCOURT1 INT  NULL,
EDUCATION1 INT  NULL,
ASSESSMENT1 INT  NULL,
DIAGNOSES INT  NULL,
SATISFACTION INT  NULL,
RELATIONS INT  NULL,
TICKLERS INT  NULL,
PO INT  NULL,
ENROLLMENT1 INT  NULL,
MEDICATIONS INT  NULL,
FAPT INT  NULL,
PLANS INT  NULL,
SCHEDULER INT  NULL,
SERVICES INT  NULL,
PROVIDERS INT  NULL,
POVERSION INT  NULL,
INVOICEVERSION INT  NULL,
CTAB1 INT  NULL,
CTAB2 INT  NULL,
CHECKVERSION INT  NULL,
SVCPLANVERSION INT  NULL,
PROFILEVERSION INT  NULL,
VEVALVERSION INT  NULL,
CONSUMERINFOVERSION INT  NULL,
MERGEDIRECTORY VARCHAR(50)  NULL,
PRGDROPDOWN INT  NULL,
EXTERNALURL VARCHAR(100)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
ResourceDropDown INT  NULL,
SITEFORMID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
EnrollmentUpdate INT  NULL,
ManualAdjWarningDays INT  NULL,
AutoPopulateDiagnoses VARCHAR(100)  NULL,
AuthUtilFiscalEndDateRequired BIT  NULL,
AuthUtilFutureAdjustUnits BIT  NULL,
RequireAuthApproval BIT  NOT NULL,
InquiryParticipantSolution VARCHAR(100)  NULL,
DisablePlannedServiceDateLogic BIT  NOT NULL,
AllegationRequiredBeforeInquiryPush BIT  NOT NULL,
ActivePSProviderRotation BIT  NOT NULL,
RequirePeopleSearch VARCHAR(100)  NULL,
LockSubPagesOnInqComplete VARCHAR(MAX)  NULL,
UpdateStatusInSubPagesInqStComplete BIT  NULL,
PeopleSearchMessageLocation VARCHAR(100)  NOT NULL,
AllegationsReqAllegedPerpetrator VARCHAR(MAX)  NULL,
AllegPerpetratorsNeedAlleg BIT  NULL,
ReferralDispositionsToClose VARCHAR(MAX)  NULL,
ReferralDaysToClose INT  NULL,
EVVActivityClaimRollup BIT  NOT NULL,
ReqPeopleSearchParticipantTypes VARCHAR(MAX)  NULL,
Constraint PK_SITEFORMID_SITEFORMS PRIMARY KEY CLUSTERED (SITEFORMID)
);

CREATE TABLE SITESTATE (
FUNDCODE VARCHAR(25)  NULL,
WARRANTREGSTATE1 VARCHAR(255)  NULL,
WARRANTREGSTATE2 VARCHAR(255)  NULL,
WARRANTREGSTATE3 VARCHAR(255)  NULL,
WARRANTREGSIG1 VARCHAR(175)  NULL,
WARRANTREGSIG2 VARCHAR(175)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
SITESTATEID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_SITESTATEID_SITESTATE PRIMARY KEY CLUSTERED (SITESTATEID)
);

CREATE TABLE SITETEXT (
FUNDCODE VARCHAR(25)  NULL,
TEXTID VARCHAR(10)  NOT NULL,
TEXTDESC VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
SITETEXTID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_SITETEXTID_SITETEXT PRIMARY KEY CLUSTERED (SITETEXTID)
);

CREATE TABLE SlidingFee (
SlidingFeeID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
CoPayID NUMERIC(10,0)  NULL,
VServiceID NUMERIC(10,0)  NULL,
Fee VARCHAR(8)  NULL,
Active INT  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
AmountFormat VARCHAR(16)  NULL,
ServiceID INT  NOT NULL,
VendorID NUMERIC(10,0)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_SlidingFeeID_SlidingFee PRIMARY KEY CLUSTERED (SlidingFeeID)
);

CREATE TABLE SlidingFeeScale (
SlidingFeeScaleID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
CoPayRateID NUMERIC(10,0)  NULL,
ServiceID INT  NOT NULL,
LowIncome VARCHAR(8)  NULL,
HighIncome VARCHAR(8)  NULL,
NumberInFamily INT  NULL,
Fee VARCHAR(8)  NULL,
FeeStartDate DATETIME  NULL,
FeeEndDate DATETIME  NULL,
Active INT  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_SlidingFeeScaleID_SlidingFeeScale PRIMARY KEY CLUSTERED (SlidingFeeScaleID)
);

CREATE TABLE SplitPay (
SplitPayID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
CoPayID NUMERIC(10,0)  NULL,
InsuranceID INT  NOT NULL,
PayPercent VARCHAR(8)  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_SplitPayID_SplitPay PRIMARY KEY CLUSTERED (SplitPayID)
);

CREATE TABLE SSRS_DefaultParameter (
ID INT IDENTITY(1,1) NOT NULL,
ReportParameterID INT  NOT NULL,
ReportID INT  NOT NULL,
MemberID INT  NOT NULL,
Constraint PK_ID_SSRS_DefaultParameter PRIMARY KEY CLUSTERED (ID)
);

CREATE TABLE SSRS_HarmonyDashboardReports (
ReportID INT IDENTITY(1,1) NOT NULL,
ReportName VARCHAR(50)  NOT NULL,
ReportDESC VARCHAR(500)  NOT NULL,
Constraint PK_ReportID_SSRS_HarmonyDashboardReports PRIMARY KEY CLUSTERED (ReportID)
);

CREATE TABLE SSRS_ReportParameter (
ReportParameterID INT IDENTITY(1,1) NOT NULL,
ReportParameterName VARCHAR(50)  NOT NULL,
ReportParameterValue VARCHAR(50)  NOT NULL,
Constraint PK_ReportParameterID_SSRS_ReportParameter PRIMARY KEY CLUSTERED (ReportParameterID)
);

CREATE TABLE StandardPhrase (
PhraseID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
Phrase VARCHAR(1024)  NOT NULL,
Category VARCHAR(50)  NULL,
Active INT  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_PhraseID_StandardPhrase PRIMARY KEY CLUSTERED (PhraseID)
);

CREATE TABLE StandardPhraseOwners (
PhraseID NUMERIC(10,0)  NOT NULL,
MemberID NUMERIC(10,0)  NOT NULL,
DATETIMESTAMP DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE StandardReasonCode (
StandardReasonID INT IDENTITY(1,1) NOT NULL,
StandardID INT  NOT NULL,
ReasonNotMetID INT  NULL,
FundCode VARCHAR(MAX)  NOT NULL,
Active BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_StandardReasonID_StandardReasonCode PRIMARY KEY CLUSTERED (StandardReasonID)
);

CREATE TABLE Standards (
StandardID INT IDENTITY(1,1) NOT NULL,
StandardCode VARCHAR(10)  NULL,
StandardType VARCHAR(100)  NULL,
StandardDescription VARCHAR(MAX)  NULL,
Active BIT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_StandardID_Standards PRIMARY KEY CLUSTERED (StandardID)
);

CREATE TABLE STARSFieldsDatabaseIDs (
STARSFieldsMappingID INT IDENTITY(1,1) NOT NULL,
FieldName VARCHAR(200)  NOT NULL,
InputOption VARCHAR(200)  NOT NULL,
STARSDatabaseID INT  NOT NULL,
ParentDatabaseID INT  NULL,
Constraint PK_STARSFieldsMappingID_STARSFieldsDatabaseIDs PRIMARY KEY CLUSTERED (STARSFieldsMappingID)
);

CREATE TABLE STATES (
STATE VARCHAR(100)  NULL,
NAME VARCHAR(50)  NOT NULL,
StatesID INT IDENTITY(1,1) NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_StatesID_STATES PRIMARY KEY CLUSTERED (StatesID)
);

CREATE TABLE Strength (
StrengthID INT IDENTITY(1,1) NOT NULL,
PlanID INT  NULL,
StrengthCodeID INT  NOT NULL,
Strength VARCHAR(255)  NULL,
Comments VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_StrengthID_Strength PRIMARY KEY CLUSTERED (StrengthID)
);

CREATE TABLE StrengthCode (
StrengthCodeID INT IDENTITY(1,1) NOT NULL,
Strength VARCHAR(255)  NOT NULL,
DomainArea VARCHAR(25)  NULL,
RequiresNamePrefix BIT  NOT NULL,
Active BIT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_StrengthCodeID_StrengthCode PRIMARY KEY CLUSTERED (StrengthCodeID)
);

CREATE TABLE SubObjectCode (
SubObjectCodeID INT IDENTITY(1,1) NOT NULL,
SubObject VARCHAR(10)  NOT NULL,
SubObjectDescription VARCHAR(100)  NULL,
SecondaryCode VARCHAR(100)  NULL,
AccountCode VARCHAR(100)  NULL,
Active BIT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
PercentToApply NUMERIC(19,2)  NULL,
ContractType VARCHAR(100)  NULL,
CheckCat VARCHAR(30)  NULL,
SOCode VARCHAR(30)  NULL,
GLCode VARCHAR(10)  NULL,
BatchAgencyID VARCHAR(30)  NULL,
LineNumber VARCHAR(30)  NULL,
IncludeInPV BIT  NOT NULL,
Constraint PK_SubObjectCodeID_SubObjectCode PRIMARY KEY CLUSTERED (SubObjectCodeID)
);

CREATE TABLE SubObjectCodeLineNumber (
SubObjectCodeLineNumberID INT IDENTITY(1,1) NOT NULL,
FundCode VARCHAR(30)  NOT NULL,
IndexCodeID INT  NOT NULL,
SubObjectCodeID INT  NOT NULL,
AgencyCode VARCHAR(30)  NOT NULL,
Organization VARCHAR(30)  NOT NULL,
SubObjectCode VARCHAR(30)  NOT NULL,
CheckCategory VARCHAR(30)  NOT NULL,
GLCode VARCHAR(30)  NULL,
AccountCode VARCHAR(30)  NOT NULL,
LineNumber VARCHAR(30)  NOT NULL,
AccountingTemplate VARCHAR(6)  NULL,
Constraint PK_SubObjectCodeLineNumberID_SubObjectCodeLineNumber PRIMARY KEY CLUSTERED (SubObjectCodeLineNumberID)
);

CREATE TABLE SUPERVISORS (
SUPERVISORSID INT IDENTITY(1,1) NOT NULL,
SUPERVISOR INT  NOT NULL,
MEMBERID INT  NOT NULL,
PRIMARYSUPER BIT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AppTYpe VARCHAR(5)  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
UserStamp INT  NOT NULL,
Active BIT  NOT NULL,
Constraint PK_SUPERVISORSID_SUPERVISORS PRIMARY KEY CLUSTERED (SUPERVISORSID)
);

CREATE TABLE Sweep (
SweepID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(100)  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_SweepID_Sweep PRIMARY KEY CLUSTERED (SweepID)
);

CREATE TABLE SystemNotificationAcknowledgements (
SystemNotificationAcknowledgementID INT IDENTITY(1,1) NOT NULL,
NotificationID INT  NOT NULL,
RecipientID INT  NOT NULL,
acknowledgement INT  NULL,
ACTIVE INT  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserID INT  NULL,
Constraint PK_SystemNotificationAcknowledgementID_SystemNotificationAcknowledgements PRIMARY KEY CLUSTERED (SystemNotificationAcknowledgementID)
);

CREATE TABLE SystemNotificationRecipients (
SystemNotificationRecipientsID INT IDENTITY(1,1) NOT NULL,
Role VARCHAR(100)  NULL,
NotificationId INT  NULL,
[Group] VARCHAR(100)  NULL,
ACTIVE INT  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_SystemNotificationRecipientsID_SystemNotificationRecipients PRIMARY KEY CLUSTERED (SystemNotificationRecipientsID)
);

CREATE TABLE SystemNotifications (
NotificationID INT IDENTITY(1,1) NOT NULL,
Priority VARCHAR(50)  NULL,
Startdate DATETIME  NULL,
Enddate DATETIME  NULL,
NotificationInterval VARCHAR(50)  NULL,
SubjectLine VARCHAR(100)  NULL,
NotificationContent VARCHAR(250)  NULL,
NotificationGroups VARCHAR(MAX)  NULL,
ExpirationDate DATETIME  NULL,
Active BIT  NOT NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
Constraint PK_NotificationID_SystemNotifications PRIMARY KEY CLUSTERED (NotificationID)
);

CREATE TABLE SystemSetup (
AppTitle VARCHAR(50)  NULL,
EmailFrom VARCHAR(100)  NULL,
RemainOnScreen INT  NULL,
QryConDefaultPath VARCHAR(255)  NULL,
PwdChangeOption INT  NULL,
ConsumerDefaultSSN VARCHAR(11)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
AddConsumerBtn INT  NULL,
AllowDuplicateConsumerSSN INT  NULL,
AllowDuplicateVendorNumber VARCHAR(6)  NULL,
ApplyDOBInSearch INT  NULL,
ApplySSNInSearch INT  NULL,
ShowSearchExternalBtn INT  NULL,
FromOCRefDate BIT  NULL,
AllowLookupPackage BIT  NULL,
AllowConsumerAddressValidation BIT  NULL,
ConsumerAddressDSN VARCHAR(32)  NULL,
ClientName VARCHAR(50)  NULL,
ShowEligSearchBtn1 BIT  NOT NULL,
ShowEligSearchBtn2 BIT  NOT NULL,
UserStamp INT  NOT NULL,
ICNum NUMERIC(10,0)  NOT NULL,
SystemSetupID INT IDENTITY(1,1) NOT NULL,
ValidateSIN BIT  NULL,
RequireEnrollmentsCheckout BIT  NULL,
RequireInquiryCheckout BIT  NULL,
RequireClaimCheckout BIT  NULL,
InfragisticsDB VARCHAR(128)  NULL,
AllowMyAttendanceWalkIn INT  NULL,
MyAttendanceUseMasterProgram INT  NULL,
MyAttendanceMasterProgram INT  NULL,
AdHocDB VARCHAR(50)  NULL,
DefaultWaitListDisposition VARCHAR(100)  NULL,
DefaultEnrollDisposition VARCHAR(100)  NULL,
DefaultDenyDisposition VARCHAR(100)  NULL,
Timer BIT  NULL,
ParticipantAutoRemoval BIT  NOT NULL,
AllowUserViewEnrollments BIT  NULL,
AllowUserViewInquiry BIT  NULL,
EnrollmentCheckoutOverrideOption VARCHAR(50)  NULL,
InquiryCheckoutOverrideOption VARCHAR(50)  NULL,
PTemplate VARCHAR(50)  NULL,
ProrateByUnits BIT  NULL,
ShowNavigationWarningMessage BIT  NOT NULL,
WorkerSyncToPeople BIT  NOT NULL,
UnlinkDuplicatedInquiry VARCHAR(50)  NULL,
ActivateAPSCaseRule BIT  NOT NULL,
ValidateSSN BIT  NULL,
HipaaVersion VARCHAR(25)  NULL,
ElectronicFileQueue BIT  NULL,
ActivateModificationEventLogging BIT  NOT NULL,
ActivateViewEventLogging BIT  NOT NULL,
Debug BIT  NULL,
TimezoneOffset INT  NULL,
EnableSSNMasking BIT  NULL,
ActivateAppealsAndClosureLogic BIT  NULL,
AppealProcessDaysCompleted INT  NULL,
ActivateCAPProcess BIT  NULL,
APDaysCompletedAfterCompletedCAP INT  NULL,
WorkerProviderSyncToPeople BIT  NULL,
DisableUserAfterXDays INT  NULL,
EnableCassValidator BIT  NULL,
EmailPrimarySupervisor BIT  NULL,
ActivateNotesReadLogic BIT  NULL,
FIPSCode INT  NULL,
RequireWaitlistCheckout BIT  NULL,
AllowUserViewWaitlist BIT  NULL,
WaitlistCheckoutOverrideOption VARCHAR(50)  NULL,
SaveScrollPosition BIT  NULL,
DeactivateReqFldLogicDraftAssess BIT  NULL,
MedAdminTimeSpan INT  NULL,
HtmlSanitizerTags VARCHAR(MAX)  NULL,
ExpiredWorkerProviderRecords BIT  NULL,
ICNum835 NUMERIC(10,0)  NOT NULL,
CouplePeopleParticipantConfig VARCHAR(MAX)  NULL,
HaPIInquiryRequiredFields VARCHAR(MAX)  NULL,
HaPIAssessmentRequiredFields VARCHAR(MAX)  NULL,
EnableClientPeopleSearch BIT  NOT NULL,
ScreenType VARCHAR(50)  NULL,
RequireAssessmentCheckOut VARCHAR(100)  NULL,
AllowUserViewCheckOutAssessment BIT  NULL,
AssessmentCheckOutOverrideOption VARCHAR(50)  NULL,
Constraint PK_SystemSetupID_SystemSetup PRIMARY KEY CLUSTERED (SystemSetupID)
);

CREATE TABLE TASK (
TaskID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(20)  NULL,
WordMergeID INT  NOT NULL,
NoteType VARCHAR(50)  NULL,
NoteStatus VARCHAR(50)  NULL,
RoutingEntity VARCHAR(20)  NULL,
FundCode VARCHAR(10)  NULL,
DateTimeStamp DATETIME  NOT NULL,
CreatedBy VARCHAR(100)  NULL,
CompleteDate DATETIME  NULL,
OpenID INT  NULL,
EnrollID INT  NULL,
Constraint PK_TaskID_TASK PRIMARY KEY CLUSTERED (TaskID)
);

CREATE TABLE TaskScheduleLog (
TaskScheduleLogID INT IDENTITY(1,1) NOT NULL,
LastRunDate DATETIME  NULL,
Status VARCHAR(10)  NULL,
TaskName VARCHAR(30)  NULL,
UserStamp INT  NULL,
Constraint PK_TaskScheduleLogID_TaskScheduleLog PRIMARY KEY CLUSTERED (TaskScheduleLogID)
);

CREATE TABLE TBLUSERSNEW (
TXTUSERID VARCHAR(50)  NOT NULL,
ID INT  NULL,
TXTUSERAUTH VARCHAR(8)  NULL,
TXTPWD VARCHAR(10)  NULL,
TXTLOGGEDON VARCHAR(10)  NULL,
ACCESSR VARCHAR(10)  NULL,
CONSUMERAUTH INT  NULL,
SERVICESAUTH INT  NULL,
PROVIDERAUTH INT  NULL,
MAINTENANCEAUTH INT  NULL,
SCHEDULERAUTH INT  NULL,
PLANAUTH INT  NULL,
FIPSAUTH VARCHAR(3)  NULL,
UTILITIESAUTH INT  NULL,
DAILYACTAUTH INT  NULL,
REPORTSAUTH INT  NULL,
EDUCAUTH INT  NULL,
DIAGAUTH INT  NULL,
OPENCLOSEAUTH INT  NULL,
TICKLERAUTH INT  NULL,
SATREVIEW INT  NULL,
ASSESSAUTH INT  NULL,
PAYAUTH INT  NULL,
TEAMMEMBERAUTH INT  NULL,
TEAMDATEAUTH INT  NULL,
TEAMCALAUTH INT  NULL,
CHECKAUTH INT  NULL,
PRECHECKAUTH INT  NULL,
NOTESAUTH INT  NULL,
MEDSAUTH INT  NULL,
MEMBERID INT  NULL,
SUPERVISOR INT  NULL,
VENDORID INT  NULL,
ACCESSLEVEL INT  NULL
);

CREATE TABLE TEAMMEMBERS (
TEAM VARCHAR(15)  NOT NULL,
MEMBERID NUMERIC(10,0)  NOT NULL
);

CREATE TABLE TEAMS (
TEAM VARCHAR(15)  NOT NULL,
CHAIR VARCHAR(25)  NULL,
LOCATION VARCHAR(50)  NULL,
BUDGETPERCENT INT  NULL,
TEAMTYPE VARCHAR(10)  NULL,
SELECTR INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
DATETIMESTAMP DATETIME  NULL,
TIME VARCHAR(50)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE TedsExportLogs (
TedsExportId INT IDENTITY(1,1) NOT NULL,
TransactionType VARCHAR(50)  NOT NULL,
RecordType VARCHAR(50)  NOT NULL,
ExportDateTime DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_TedsExportId_TedsExportLogs PRIMARY KEY CLUSTERED (TedsExportId)
);

CREATE TABLE TedsExportLogsDetails (
TedsExportDetailsId INT IDENTITY(1,1) NOT NULL,
AssessmentId INT  NOT NULL,
CaseNo INT  NOT NULL,
ProviderId INT  NOT NULL,
TedsExportId INT  NOT NULL,
Constraint PK_TedsExportDetailsId_TedsExportLogsDetails PRIMARY KEY CLUSTERED (TedsExportDetailsId)
);

CREATE TABLE Tickler (
TicklerID INT IDENTITY(1,1) NOT NULL,
TriggerEventID INT  NULL,
DestinationEntityID INT  NOT NULL,
AssignTicklerToRole INT  NULL,
AssignTicklerToWorker INT  NULL,
DestinationChapterName VARCHAR(255)  NOT NULL,
DestinationPageName VARCHAR(255)  NOT NULL,
DestinationURL VARCHAR(255)  NULL,
Priority INT  NOT NULL,
TicklerToCall INT  NULL,
Comments VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
ReviewType VARCHAR(100)  NULL,
DateDue DATETIME  NULL,
DateCompleted DATETIME  NULL,
DateTimeStamp DATETIME  NOT NULL,
AlertDaysBeforeDue INT  NULL,
AppType VARCHAR(5)  NOT NULL,
DateCreated DATETIME  NULL,
Status INT  NULL,
DisplayName VARCHAR(250)  NULL,
DestinationType INT  NOT NULL,
CreatedByUserStamp VARCHAR(100)  NOT NULL,
SortOrder INT  NOT NULL,
UseParentEntityID BIT  NULL,
TicklerSetupID INT  NULL,
RunInSilence BIT  NULL,
ApprovalName INT  NULL,
ApprovalDate DATETIME  NULL,
CancelPermission VARCHAR(100)  NULL,
AllowReassignmentBy VARCHAR(100)  NULL,
AllowCancelingBy VARCHAR(100)  NULL,
AllowEditingBy VARCHAR(100)  NULL,
AllowAddingAnotherBy VARCHAR(100)  NULL,
IgnoreNumDaysTilNext BIT  NOT NULL,
CheckForExistingRecord BIT  NOT NULL,
AllowManualCompletion BIT  NOT NULL,
AllowReassignToMe BIT  NULL,
EmailSubject VARCHAR(100)  NULL,
EmailMessage VARCHAR(5000)  NULL,
ValidationWFWID INT  NULL,
ValidationMessage VARCHAR(500)  NULL,
Constraint PK_TicklerID_Tickler PRIMARY KEY CLUSTERED (TicklerID)
);

CREATE TABLE TicklerSetup (
TicklerSetupID INT IDENTITY(1,1) NOT NULL,
TriggerEventTypeID INT  NOT NULL,
ReviewType VARCHAR(100)  NULL,
NumDaysTilNext INT  NOT NULL,
SortOrder INT  NOT NULL,
DestinationChapterName VARCHAR(255)  NOT NULL,
DestinationPageName VARCHAR(255)  NOT NULL,
DestinationURL VARCHAR(255)  NULL,
HelpLine VARCHAR(500)  NULL,
AlertDaysBeforeDue INT  NULL,
Priority INT  NOT NULL,
TicklerToCall INT  NULL,
AssignTicklerToRole INT  NULL,
AssignTicklerToWorker VARCHAR(50)  NULL,
CalculateDueDateBasedOn VARCHAR(50)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
DisplayName VARCHAR(250)  NULL,
DestinationType INT  NOT NULL,
UseParentEntityID BIT  NULL,
RunInSilence BIT  NULL,
DELETED BIT  NOT NULL,
DisplayNameTopText VARCHAR(250)  NULL,
DisplayNameBottomText VARCHAR(250)  NULL,
AllowReassignmentBy VARCHAR(100)  NULL,
AllowCancelingBy VARCHAR(100)  NULL,
AllowEditingBy VARCHAR(100)  NULL,
AllowAddingAnotherBy VARCHAR(100)  NULL,
CalculateDueTimeBasedOn VARCHAR(50)  NULL,
IgnoreNumDaysTilNext BIT  NOT NULL,
CheckForExistingRecord BIT  NOT NULL,
AllowManualCompletion BIT  NOT NULL,
DueDateCalculatedBasedOn VARCHAR(100)  NOT NULL,
AllowReassignToMe BIT  NULL,
EmailSubject VARCHAR(100)  NULL,
EmailMessage VARCHAR(5000)  NULL,
ValidationWFWID INT  NULL,
ValidationMessage VARCHAR(500)  NULL,
AttachICSFile BIT  NULL,
Constraint PK_TicklerSetupID_TicklerSetup PRIMARY KEY CLUSTERED (TicklerSetupID)
);

CREATE TABLE TicklerSetupRule (
TicklerSetupRuleID INT IDENTITY(1,1) NOT NULL,
TriggerEventTypeID INT  NOT NULL,
ClientSideControlID VARCHAR(255)  NOT NULL,
Operator VARCHAR(25)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
OnFieldChange BIT  NOT NULL,
Constraint PK_TicklerSetupRuleID_TicklerSetupRule PRIMARY KEY CLUSTERED (TicklerSetupRuleID)
);

CREATE TABLE TicklerSetupValue (
TicklerSetupValueID INT IDENTITY(1,1) NOT NULL,
TicklerSetupRuleID INT  NOT NULL,
ValueToMatch VARCHAR(128)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_TicklerSetupValueID_TicklerSetupValue PRIMARY KEY CLUSTERED (TicklerSetupValueID)
);

CREATE TABLE TieredCopay (
TieredCopayId NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
CopayId NUMERIC(10,0)  NULL,
CopayAmount VARCHAR(8)  NULL,
VisitSTARTDATE DATETIME  NULL,
VisitENDDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NULL,
apptype VARCHAR(5)  NULL,
AmountFormat VARCHAR(16)  NULL,
BeginVisit INT  NULL,
EndVisit INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_TieredCopayId_TieredCopay PRIMARY KEY CLUSTERED (TieredCopayId)
);

CREATE TABLE TIMESETUP (
TEAM VARCHAR(15)  NOT NULL,
TIME DATETIME  NOT NULL
);

CREATE TABLE TrackDisposition (
TrackDispositionID INT IDENTITY(1,1) NOT NULL,
Disposition VARCHAR(100)  NOT NULL,
DispositionDate DATETIME  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
EndDate DATETIME  NULL,
Comments VARCHAR(255)  NULL,
ChapterName VARCHAR(100)  NOT NULL,
ChapterEntityID INT  NOT NULL,
PageName VARCHAR(100)  NOT NULL,
EntityID INT  NOT NULL,
Status VARCHAR(100)  NULL,
Constraint PK_TrackDispositionID_TrackDisposition PRIMARY KEY CLUSTERED (TrackDispositionID)
);

CREATE TABLE TrackTickler (
TrackTicklerID INT IDENTITY(1,1) NOT NULL,
ReviewID NUMERIC(10,0)  NOT NULL,
Type VARCHAR(10)  NOT NULL,
ReassignedBy NUMERIC(10,0)  NOT NULL,
ReassignedTo NUMERIC(10,0)  NOT NULL,
UserStamp VARCHAR(10)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_TrackTicklerID_TrackTickler PRIMARY KEY CLUSTERED (TrackTicklerID)
);

CREATE TABLE TRAININGATTENDANCE (
TRAININGATTENDID NUMERIC(10,0)  NOT NULL,
TRAININGSCHEDULEID NUMERIC(10,0)  NULL,
MEMBERID NUMERIC(10,0)  NULL,
ATTENDED INT  NULL,
GRADE VARCHAR(50)  NULL,
HOURS VARCHAR(8)  NULL
);

CREATE TABLE TRAININGCLASSES (
TRAININGCLASSID NUMERIC(10,0)  NOT NULL,
FUNDCODE VARCHAR(25)  NULL,
CATEGORY VARCHAR(50)  NULL,
NAME VARCHAR(50)  NULL,
HOURS VARCHAR(8)  NULL,
CREDITS VARCHAR(8)  NULL,
DESCRIPTION VARCHAR(MAX)  NULL,
ACTIVE INT  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE TRAININGSCHEDULE (
TRAININGSCHEDULEID NUMERIC(10,0)  NOT NULL,
TRAININGCLASSID NUMERIC(10,0)  NULL,
TRAININGDATE DATETIME  NULL,
STARTTIME DATETIME  NULL,
ENDTIME DATETIME  NULL,
TRAINER VARCHAR(50)  NULL,
LOCATION VARCHAR(50)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE TRANSACTIONS (
TRANSID NUMERIC(10,0)  NOT NULL,
ACTID NUMERIC(10,0)  NULL,
PAYERBILLDATE DATETIME  NULL,
PAYERNUM NUMERIC(10,0)  NULL,
PAYERID NUMERIC(10,0)  NULL,
PAYERBILLED NUMERIC(19,4)  NULL,
PAYERPAID NUMERIC(19,4)  NULL,
PAYDATE DATETIME  NULL,
PAYERWRITEOFF NUMERIC(19,4)  NULL,
TRANSCOMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
TYPETRANS VARCHAR(10)  NULL,
BILLTYPE VARCHAR(50)  NULL,
PAIDBY VARCHAR(50)  NULL,
UNITCOST NUMERIC(19,4)  NULL,
USERPAYENTRY VARCHAR(10)  NULL,
DATETIMEPAYENTRY DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE TriggerEvent (
TriggerEventID INT IDENTITY(1,1) NOT NULL,
TriggerEventTypeID INT  NOT NULL,
EntityID INT  NOT NULL,
ChapterName VARCHAR(255)  NOT NULL,
PageName VARCHAR(255)  NOT NULL,
ChapterEntityID INT  NOT NULL,
CreateDate DATETIME  NOT NULL,
FundCode VARCHAR(25)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_TriggerEventID_TriggerEvent PRIMARY KEY CLUSTERED (TriggerEventID)
);

CREATE TABLE TriggerEventDetail (
TriggerEventDetailID INT IDENTITY(1,1) NOT NULL,
TriggerEventID INT  NOT NULL,
ClientSideControlID VARCHAR(255)  NOT NULL,
NewValue VARCHAR(255)  NOT NULL,
OldValue VARCHAR(255)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_TriggerEventDetailID_TriggerEventDetail PRIMARY KEY CLUSTERED (TriggerEventDetailID)
);

CREATE TABLE TriggerEventType (
TriggerEventTypeID INT IDENTITY(1,1) NOT NULL,
Name VARCHAR(255)  NOT NULL,
Label VARCHAR(255)  NOT NULL,
ChapterName VARCHAR(255)  NOT NULL,
PageName VARCHAR(255)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Active BIT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
HelpLine VARCHAR(500)  NULL,
EventType VARCHAR(50)  NULL,
ScreenDesignID INT  NULL,
TriggerWizard4Import VARCHAR(100)  NULL,
Constraint PK_TriggerEventTypeID_TriggerEventType PRIMARY KEY CLUSTERED (TriggerEventTypeID)
);

CREATE TABLE TriggerEventTypeFundCode (
TriggerEventTypeFundCodeID INT IDENTITY(1,1) NOT NULL,
TriggerEventTypeID INT  NOT NULL,
FundCode VARCHAR(25)  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
Constraint PK_TriggerEventTypeFundCodeID_TriggerEventTypeFundCode PRIMARY KEY CLUSTERED (TriggerEventTypeFundCodeID)
);

CREATE TABLE TriggerEventTypeVendor (
TriggerEventTypeVendorID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
TriggerEventTypeID INT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
AppType VARCHAR(5)  NULL,
Constraint PK_TriggerEventTypeVendorID_TriggerEventTypeVendor PRIMARY KEY CLUSTERED (TriggerEventTypeVendorID)
);

CREATE TABLE TriggerValidationTables (
ID INT IDENTITY(1,1) NOT NULL,
PageName VARCHAR(255)  NULL,
PrimaryTable VARCHAR(255)  NULL,
SecondaryTable VARCHAR(255)  NULL,
Active BIT  NULL,
AppType VARCHAR(5)  NOT NULL,
USERSTAMP INT  NULL,
DateTimeStamp DATETIME  NULL,
ChapterName VARCHAR(100)  NULL,
IsScheduler BIT  NULL,
Constraint PK_ID_TriggerValidationTables PRIMARY KEY CLUSTERED (ID)
);

CREATE TABLE ULDLFolderDeleteConfig (
ULDLFolderDeleteConfigID INT IDENTITY(1,1) NOT NULL,
KeepDate DATETIME  NULL,
DaysNo INT  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_ULDLFolderDeleteConfigID_ULDLFolderDeleteConfig PRIMARY KEY CLUSTERED (ULDLFolderDeleteConfigID)
);

CREATE TABLE UNIT_SUPERVISOR (
UNIT VARCHAR(50)  NOT NULL,
MEMBERID NUMERIC(10,0)  NOT NULL
);

CREATE TABLE UploadDownloadFilesLog (
UploadDownloadFileLogID INT IDENTITY(1,1) NOT NULL,
FileName VARCHAR(500)  NOT NULL,
Action VARCHAR(50)  NOT NULL,
UserID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_UploadDownloadFileLogID_UploadDownloadFilesLog PRIMARY KEY CLUSTERED (UploadDownloadFileLogID)
);

CREATE TABLE UserControl (
UserControlID INT IDENTITY(1,1) NOT NULL,
ControlDescription VARCHAR(2000)  NOT NULL,
ControlFileName VARCHAR(255)  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
UNIQUEID VARCHAR(16)  NOT NULL,
ORIGINALID VARCHAR(16)  NOT NULL,
Constraint PK_UserControlID_UserControl PRIMARY KEY CLUSTERED (UserControlID)
);

CREATE TABLE UserFundCode (
FUNDCODE VARCHAR(25)  NULL,
UserFundCodeID INT IDENTITY(1,1) NOT NULL,
UserID INT  NULL,
Constraint PK_UserFundCodeID_UserFundCode PRIMARY KEY CLUSTERED (UserFundCodeID)
);

CREATE TABLE UserLog (
PWD VARCHAR(50)  NULL,
WORKSTATION VARCHAR(64)  NULL,
WINDOWSUSER VARCHAR(64)  NULL,
APPTYPE VARCHAR(5)  NULL,
USERID INT  NOT NULL,
USERLOGINID INT IDENTITY(1,1) NOT NULL,
LOGIN DATETIME  NOT NULL,
LOGOUT DATETIME  NULL,
LOGOUTSOURCE VARCHAR(25)  NULL,
SESSIONID VARCHAR(25)  NULL,
USERSTAMP INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
Constraint PK_USERLOGINID_UserLog PRIMARY KEY CLUSTERED (USERLOGINID)
);

CREATE TABLE UserRandomText (
UserRandomTextID INT IDENTITY(1,1) NOT NULL,
UserID INT  NOT NULL,
AppDataRandomText VARCHAR(1000)  NOT NULL,
PassRandomText VARCHAR(1000)  NOT NULL,
Userstamp INT  NULL,
Datetimestamp DATETIME  NOT NULL,
Constraint PK_UserRandomTextID_UserRandomText PRIMARY KEY CLUSTERED (UserRandomTextID)
);

CREATE TABLE UserRole (
UserRoleID INT IDENTITY(1,1) NOT NULL,
UserID INT  NOT NULL,
RoleID INT  NOT NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
Userstamp INT  NULL,
Datetimestamp DATETIME  NOT NULL,
DefaultRole BIT  NOT NULL,
Constraint PK_UserRoleID_UserRole PRIMARY KEY CLUSTERED (UserRoleID)
);

CREATE TABLE Users (
USERID INT IDENTITY(1,1) NOT NULL,
TXTUSERID VARCHAR(100)  NOT NULL,
ID INT  NULL,
TXTUSERAUTH INT  NULL,
TXTPWD VARCHAR(50)  NULL,
TXTLOGGEDON VARCHAR(10)  NULL,
ACCESSR VARCHAR(10)  NULL,
CONSUMERAUTH INT  NULL,
SERVICESAUTH INT  NULL,
PROVIDERAUTH INT  NULL,
MAINTENANCEAUTH INT  NULL,
SCHEDULERAUTH INT  NULL,
PLANAUTH INT  NULL,
FIPSAUTH VARCHAR(25)  NULL,
UTILITIESAUTH INT  NULL,
DAILYACTAUTH INT  NULL,
REPORTSAUTH INT  NULL,
EDUCAUTH INT  NULL,
DIAGAUTH INT  NULL,
OPENCLOSEAUTH INT  NULL,
TICKLERAUTH INT  NULL,
SATREVIEW INT  NULL,
ASSESSAUTH INT  NULL,
PAYAUTH INT  NULL,
TEAMMEMBERAUTH INT  NULL,
TEAMDATEAUTH INT  NULL,
TEAMCALAUTH INT  NULL,
CHECKAUTH INT  NULL,
PRECHECKAUTH INT  NULL,
NOTESAUTH INT  NULL,
MEDSAUTH INT  NULL,
MEMBERID INT  NULL,
SUPERVISOR NUMERIC(10,0)  NULL,
VENDORID INT  NULL,
LIMITVIEWTO VARCHAR(50)  NULL,
PWDDTS DATETIME  NULL,
PWDUSED INT  NULL,
ACTIVE INT  NULL,
SECUREGROUP VARCHAR(35)  NULL,
SUPERPRIV INT  NULL,
APPROVEAUTH INT  NULL,
CRVIEWER VARCHAR(100)  NULL,
FINANCEAPPROVE INT  NULL,
TwoPartHarmony INT  NULL,
APPTYPE VARCHAR(5)  NULL,
AttemptNum INT  NULL,
ChangePwd INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ExpiresOn DATETIME  NULL,
PwdLastChanged DATETIME  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
UserStamp INT  NOT NULL,
PasswordHash VARCHAR(64)  NULL,
PasswordDate DATETIME  NULL,
LockedOut BIT  NULL,
Logins INT  NULL,
FailedLogins INT  NULL,
SaveReminderInMins INT  NULL,
InterRAIAccept DATETIME  NULL,
Salt VARCHAR(64)  NULL,
UserAccess VARCHAR(100)  NULL,
ForgotPasswordCodeRequestCount INT  NOT NULL,
IsPwdUpgradedToSHA256 BIT  NULL,
LockoutDateTimeStamp DATETIME  NULL,
AdminLockout BIT  NULL,
Constraint PK_USERID_Users PRIMARY KEY CLUSTERED (USERID)
);

CREATE TABLE UserSecurityQuestions (
UserSecurityQuestionsID INT IDENTITY(1,1) NOT NULL,
UserID INT  NOT NULL,
QuestionLookupCodesMastID INT  NOT NULL,
Answer VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Salt VARCHAR(64)  NULL,
IsAnsUpgradedToSHA256 BIT  NULL,
Constraint PK_UserSecurityQuestionsID_UserSecurityQuestions PRIMARY KEY CLUSTERED (UserSecurityQuestionsID)
);

CREATE TABLE VendFundCodeIdentifier (
VendFundCodeIdentifierID INT IDENTITY(1,1) NOT NULL,
VendFundCodeID INT  NOT NULL,
Type VARCHAR(100)  NULL,
Category VARCHAR(100)  NULL,
StartDate DATETIME  NOT NULL,
EndDate DATETIME  NULL,
Active BIT  NOT NULL,
Identifier VARCHAR(20)  NULL,
Comment VARCHAR(500)  NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
FiscalYear INT  NULL,
LinkedID INT  NULL,
Status VARCHAR(100)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericText1 VARCHAR(500)  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
Constraint PK_VendFundCodeIdentifierID_VendFundCodeIdentifier PRIMARY KEY CLUSTERED (VendFundCodeIdentifierID)
);

CREATE TABLE VENDFUNDCODES (
VENDFUNDID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NULL,
FUNDCODE VARCHAR(25)  NULL,
STATUS VARCHAR(100)  NULL,
STATUSDATE DATETIME  NULL,
OPENDATE DATETIME  NULL,
CLOSEDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ALLOWPAYMENTS INT  NULL,
ALLOWNEWPOS INT  NULL,
VDISPOSITION VARCHAR(100)  NULL,
APPTYPE VARCHAR(5)  NULL,
VDispositionDate DATETIME  NULL,
MaxDays INT  NULL,
SITEID INT  NULL,
UserStamp INT  NOT NULL,
DispositionReason VARCHAR(100)  NULL,
GenericText VARCHAR(100)  NULL,
ProgramStatus VARCHAR(100)  NULL,
ProgramID VARCHAR(MAX)  NULL,
Constraint PK_VENDFUNDID_VENDFUNDCODES PRIMARY KEY CLUSTERED (VENDFUNDID)
);

CREATE TABLE VENDORACCREDITATION (
VACCREDITATIONID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NULL,
ACCREDITATION VARCHAR(50)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
COMMENTS VARCHAR(250)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_VACCREDITATIONID_VENDORACCREDITATION PRIMARY KEY CLUSTERED (VACCREDITATIONID)
);

CREATE TABLE VendorAdjustmentRules (
VendorAdjRuleID NUMERIC(10,0)  NOT NULL,
RuleName VARCHAR(50)  NULL,
RuleDescription VARCHAR(100)  NULL,
AdjustmentCode VARCHAR(10)  NULL,
AdjustmentGroup VARCHAR(10)  NULL,
AdjustmentReason VARCHAR(100)  NULL,
Active INT  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE VendorAppeal (
VendorAppealID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
VendorFundID INT  NULL,
AppealType VARCHAR(100)  NOT NULL,
AppealNumber VARCHAR(50)  NULL,
Decision VARCHAR(100)  NULL,
DecisionType VARCHAR(100)  NULL,
DecisionDate DATETIME  NULL,
Description VARCHAR(200)  NULL,
AppealDate DATETIME  NULL,
MemberID INT  NULL,
Comment VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
Constraint PK_VendorAppealID_VendorAppeal PRIMARY KEY CLUSTERED (VendorAppealID)
);

CREATE TABLE VendorCAPS (
CAPID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
CAPNumber VARCHAR(50)  NULL,
CAPType VARCHAR(200)  NULL,
CAPDate DATETIME  NULL,
ContactedDate DATETIME  NULL,
Status VARCHAR(100)  NULL,
Alerts INT  NULL,
MemberID1 INT  NULL,
MemberID2 INT  NULL,
MemberID3 INT  NULL,
FacilityID INT  NULL,
Score1 VARCHAR(50)  NULL,
Score2 VARCHAR(50)  NULL,
Score3 VARCHAR(50)  NULL,
Discrepancies NUMERIC(19,2)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericLookup4 VARCHAR(100)  NULL,
GenericText1 VARCHAR(500)  NULL,
GenericText2 VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericMultiSelect1 VARCHAR(MAX)  NULL,
GenericMultiSelect2 VARCHAR(MAX)  NULL,
GenericCheckBox1 BIT  NULL,
GenericCheckBox2 BIT  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_CAPID_VendorCAPS PRIMARY KEY CLUSTERED (CAPID)
);

CREATE TABLE VendorCAPSItems (
ItemID INT IDENTITY(1,1) NOT NULL,
CAPID INT  NOT NULL,
ItemNumber VARCHAR(50)  NULL,
Source VARCHAR(200)  NULL,
Category VARCHAR(200)  NULL,
Type VARCHAR(200)  NULL,
EmployeeInvolved VARCHAR(500)  NULL,
StandardID INT  NULL,
Reason VARCHAR(MAX)  NULL,
Status VARCHAR(100)  NULL,
Description VARCHAR(MAX)  NULL,
DiscrepancyAmount NUMERIC(19,2)  NULL,
DueDate DATETIME  NULL,
CompletionDate DATETIME  NULL,
Alert BIT  NULL,
MemberID INT  NULL,
CARequired VARCHAR(MAX)  NULL,
CompletionDetails VARCHAR(MAX)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericLookup4 VARCHAR(100)  NULL,
GenericLookup5 VARCHAR(100)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericDate1 DATETIME  NULL,
GenericDate2 DATETIME  NULL,
GenericDate3 DATETIME  NULL,
GenericMultiSelect1 VARCHAR(MAX)  NULL,
GenericMultiSelect2 VARCHAR(MAX)  NULL,
GenericCheckBox1 BIT  NULL,
GenericCheckBox2 BIT  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_ItemID_VendorCAPSItems PRIMARY KEY CLUSTERED (ItemID)
);

CREATE TABLE VENDORCATEGORIES (
VCATEGORYID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
VCATEGORY VARCHAR(100)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
EndDate DATETIME  NULL,
StartDate DATETIME  NULL,
UserStamp INT  NOT NULL,
Constraint PK_VCATEGORYID_VENDORCATEGORIES PRIMARY KEY CLUSTERED (VCATEGORYID)
);

CREATE TABLE VendorContracts (
VendorContractID INT IDENTITY(1,1) NOT NULL,
VendFundID INT  NULL,
ContractType VARCHAR(100)  NULL,
ContractStatus VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
ContractAmount VARCHAR(8)  NULL,
ServiceTypes VARCHAR(255)  NULL,
Description VARCHAR(MAX)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
PayorID INT  NULL,
ContractNo VARCHAR(50)  NULL,
FiscalYear INT  NULL,
VendorID INT  NOT NULL,
ParentContractNo VARCHAR(50)  NULL,
Source VARCHAR(100)  NULL,
Constraint PK_VendorContractID_VendorContracts PRIMARY KEY CLUSTERED (VendorContractID)
);

CREATE TABLE VendorContractServices (
VendorContractID INT  NOT NULL,
ServiceID INT  NULL,
Comments VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NOT NULL,
UserStamp INT  NOT NULL,
VendorContractServiceID INT IDENTITY(1,1) NOT NULL,
MaxUnitsAllowed INT  NULL,
VServiceID INT  NULL,
MaxAmountAllowed NUMERIC(19,2)  NULL,
GenericCurrency1 NUMERIC(19,2)  NULL,
GenericCurrency2 NUMERIC(19,2)  NULL,
GenericText1 VARCHAR(100)  NULL,
GenericText2 VARCHAR(100)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
Constraint PK_VendorContractServiceID_VendorContractServices PRIMARY KEY CLUSTERED (VendorContractServiceID)
);

CREATE TABLE VENDORDETREVIEW (
VENDORDETREVIEWID INT IDENTITY(1,1) NOT NULL,
VASSESSID INT  NOT NULL,
SCALE VARCHAR(255)  NULL,
ITEM VARCHAR(MAX)  NULL,
SCORE NUMERIC(10,0)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
YN INT  NULL,
LOOKUPVALUE VARCHAR(50)  NULL,
SCALEID NUMERIC(10,0)  NOT NULL,
APPTYPE VARCHAR(5)  NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
QuestionID VARCHAR(15)  NULL,
SecID VARCHAR(500)  NULL,
Constraint PK_VENDORDETREVIEWID_VENDORDETREVIEW PRIMARY KEY CLUSTERED (VENDORDETREVIEWID)
);

CREATE TABLE VendorFacilityBed (
VENDORFACILITYBEDID INT IDENTITY(1,1) NOT NULL,
FACILITYID INT  NULL,
BEDNUMBER VARCHAR(25)  NOT NULL,
TYPE VARCHAR(100)  NULL,
CATEGORY VARCHAR(100)  NULL,
STARTDATE DATETIME  NOT NULL,
ENDDATE DATETIME  NULL,
ACTIVE BIT  NOT NULL,
GENDER VARCHAR(100)  NULL,
COMMENTS VARCHAR(2000)  NULL,
GENERICDROPDOWN1 VARCHAR(100)  NULL,
GENERICDROPDOWN2 VARCHAR(100)  NULL,
GENERICDATE1 DATETIME  NULL,
GENERICDATE2 DATETIME  NULL,
GENERICTEXT1 VARCHAR(1000)  NULL,
GENERICTEXT2 VARCHAR(1000)  NULL,
USERSTAMP INT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
Room VARCHAR(500)  NULL,
Constraint PK_VENDORFACILITYBEDID_VendorFacilityBed PRIMARY KEY CLUSTERED (VENDORFACILITYBEDID)
);

CREATE TABLE VendorFee (
VendorFeeID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
VendorFundID INT  NULL,
FeeNumber VARCHAR(50)  NULL,
FeeType VARCHAR(100)  NOT NULL,
FeeSubType VARCHAR(100)  NULL,
Description VARCHAR(200)  NULL,
Status VARCHAR(100)  NULL,
Reason VARCHAR(100)  NULL,
PaymentPlan VARCHAR(100)  NULL,
Terms VARCHAR(MAX)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Comment VARCHAR(MAX)  NULL,
FeeAmount VARCHAR(8)  NULL,
BalanceDue VARCHAR(8)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_VendorFeeID_VendorFee PRIMARY KEY CLUSTERED (VendorFeeID)
);

CREATE TABLE VendorFeePayment (
VendorFeePaymentID INT IDENTITY(1,1) NOT NULL,
VendorFeeID INT  NOT NULL,
PaymentID VARCHAR(50)  NULL,
PaymentDate DATETIME  NULL,
PaymentType VARCHAR(100)  NULL,
PaymentAmount VARCHAR(8)  NOT NULL,
Comment VARCHAR(MAX)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Constraint PK_VendorFeePaymentID_VendorFeePayment PRIMARY KEY CLUSTERED (VendorFeePaymentID)
);

CREATE TABLE VendorGroup (
VendorGroupID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
GroupName VARCHAR(50)  NOT NULL,
GroupType VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
StartTime DATETIME  NULL,
EndTime DATETIME  NULL,
Location VARCHAR(100)  NULL,
Comments VARCHAR(MAX)  NULL,
Active BIT  NOT NULL,
DateTimestamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
Domain VARCHAR(100)  NULL,
Risk VARCHAR(100)  NULL,
Strategy VARCHAR(100)  NULL,
GenericLookup1 VARCHAR(100)  NULL,
GenericLookup2 VARCHAR(100)  NULL,
GenericLookup3 VARCHAR(100)  NULL,
GenericLookup4 VARCHAR(100)  NULL,
MemberID INT  NULL,
VServiceID INT  NULL,
FacilityID INT  NULL,
ContactType VARCHAR(100)  NULL,
PlaceOfService VARCHAR(100)  NULL,
SessionCapacity INT  NULL,
GroupNumber VARCHAR(1000)  NULL,
GroupNameAbbreviation VARCHAR(500)  NULL,
FundCode VARCHAR(25)  NULL,
NumberAttended NUMERIC(19,2)  NULL,
NumberCompleted NUMERIC(19,2)  NULL,
Agency INT  NULL,
InternalProgram INT  NULL,
SessionWorker2 INT  NULL,
SessionWorker3 INT  NULL,
GenericNumber1 NUMERIC(19,2)  NULL,
GenericNumber2 NUMERIC(19,2)  NULL,
GenericNumber3 NUMERIC(19,2)  NULL,
Comment2 VARCHAR(MAX)  NULL,
GenericMultiSelect VARCHAR(MAX)  NULL,
MemberType VARCHAR(100)  NULL,
WorkerProfessionalExperience VARCHAR(45)  NULL,
Constraint PK_VendorGroupID_VendorGroup PRIMARY KEY CLUSTERED (VendorGroupID)
);

CREATE TABLE VENDORLEAVE (
VENDORID INT  NOT NULL,
LEAVESTARTDATE DATETIME  NULL,
LEAVEENDDATE DATETIME  NULL,
LEAVEDAYS VARCHAR(8)  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL,
Comments VARCHAR(500)  NULL,
VLEAVEID INT IDENTITY(1,1) NOT NULL,
Constraint PK_VLEAVEID_VENDORLEAVE PRIMARY KEY CLUSTERED (VLEAVEID)
);

CREATE TABLE VendorLinkedRelships (
VendorLinkedRelshipID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
LinkedVendorID INT  NOT NULL,
Relationship VARCHAR(100)  NOT NULL,
Startdate DATETIME  NOT NULL,
Enddate DATETIME  NULL,
Generic VARCHAR(MAX)  NULL,
UserID INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_VendorLinkedRelshipID_VendorLinkedRelships PRIMARY KEY CLUSTERED (VendorLinkedRelshipID)
);

CREATE TABLE VENDORREVIEW (
VASSESSID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
REVIEW VARCHAR(100)  NULL,
RATER NUMERIC(10,0)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
SYSTEMFACTORS VARCHAR(50)  NULL,
INDIVIDUALFACTORS VARCHAR(50)  NULL,
STATUS VARCHAR(100)  NULL,
RISKS VARCHAR(50)  NULL,
FUNDCODE VARCHAR(25)  NULL,
REVIEWDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
PROGRAM NUMERIC(10,0)  NULL,
APPROVEDBY NUMERIC(10,0)  NULL,
APPROVEDATE DATETIME  NULL,
APPROVEUSER VARCHAR(100)  NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
TRIGGERID NUMERIC(10,0)  NULL,
TRIGGERPAGE VARCHAR(20)  NULL,
APPTYPE VARCHAR(5)  NULL,
Site VARCHAR(100)  NULL,
ScreenDesignID INT  NOT NULL,
UserStamp INT  NOT NULL,
VNoteID INT  NULL,
ExpirationDate DATETIME  NULL,
Expired BIT  NULL,
GenericMax VARCHAR(MAX)  NULL,
GenericMax2 VARCHAR(MAX)  NULL,
GenericWorker1 INT  NULL,
GenericWorker2 INT  NULL,
GenericDropDown1 VARCHAR(100)  NULL,
GenericDropDown2 VARCHAR(100)  NULL,
Constraint PK_VASSESSID_VENDORREVIEW PRIMARY KEY CLUSTERED (VASSESSID)
);

CREATE TABLE Vendors (
VendorID INT IDENTITY(1,1) NOT NULL,
VendorNO VARCHAR(50)  NULL,
VPUBLIC BIT  NULL,
TAXID VARCHAR(15)  NULL,
CONTACTNAME VARCHAR(100)  NULL,
CURRVCONTRACT BIT  NULL,
DATECONTRACT DATETIME  NULL,
CONTRACT VARCHAR(15)  NULL,
FOSTERPARENT BIT  NULL,
SECID VARCHAR(15)  NULL,
NOTES VARCHAR(175)  NULL,
MAILTONAME VARCHAR(75)  NULL,
MAILTOCONTACT VARCHAR(50)  NULL,
ACTIVE BIT  NOT NULL,
SAMEMAILTOAS INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
INOUTCOMMUNITY BIT  NULL,
MEDICAIDAPP BIT  NULL,
MONITOR1 INT  NULL,
MONITOR2 INT  NULL,
MONITOR3 INT  NULL,
DIVISION VARCHAR(100)  NULL,
TYPEVENDOR VARCHAR(50)  NULL,
UNIT VARCHAR(50)  NULL,
OFFICE VARCHAR(50)  NULL,
DISTRICT VARCHAR(25)  NULL,
LOCATION VARCHAR(100)  NULL,
APPTYPE VARCHAR(5)  NULL,
GENERICTEXT1 VARCHAR(35)  NULL,
GENERICTEXT2 VARCHAR(100)  NULL,
GENERICDROPDOWN1 VARCHAR(100)  NULL,
GENERICDROPDOWN2 VARCHAR(100)  NULL,
GENERICDATE1 DATETIME  NULL,
GENERICDATE2 DATETIME  NULL,
[External] BIT  NULL,
Exclude BIT  NULL,
UserStamp INT  NOT NULL,
AGENCY VARCHAR(250)  NULL,
SHORTNAME VARCHAR(25)  NULL,
EXTENSION VARCHAR(7)  NULL,
WEBSITE VARCHAR(500)  NULL,
EMAIL VARCHAR(100)  NULL,
COUNTRY VARCHAR(25)  NULL,
Gender VARCHAR(100)  NULL,
LevelOfCare VARCHAR(100)  NULL,
HighAge VARCHAR(8)  NULL,
LowAge VARCHAR(8)  NULL,
Region VARCHAR(100)  NULL,
County VARCHAR(100)  NULL,
LinkMailTo BIT  NULL,
PERMITNO VARCHAR(20)  NULL,
PERMITDATE DATETIME  NULL,
NUMLICENSEDFOR INT  NULL,
PROVIDERTYPE VARCHAR(100)  NULL,
HOWREGULATED VARCHAR(100)  NULL,
EXEMPT BIT  NULL,
FICA BIT  NULL,
GARNISHMENT BIT  NULL,
GARNSTART DATETIME  NULL,
GARNEND DATETIME  NULL,
GARNAMOUNT NUMERIC(19,2)  NULL,
GARNPERCENT VARCHAR(8)  NULL,
GARNTOTAL NUMERIC(19,2)  NULL,
INVOICETYPE VARCHAR(100)  NULL,
GARNISHERID INT  NULL,
SETTING VARCHAR(100)  NULL,
PROMPTPAYDAYS INT  NULL,
PROMPTPAYPERCENT VARCHAR(8)  NULL,
AllowAuthOverlap BIT  NOT NULL,
AllowEnrollOverlap BIT  NULL,
AllowPlacementOverlap BIT  NULL,
Location2 VARCHAR(100)  NULL,
uploaddirectory VARCHAR(100)  NULL,
downloaddirectory VARCHAR(100)  NULL,
MailingSameAsContact BIT  NULL,
GenericCurrency1 VARCHAR(8)  NULL,
NPI VARCHAR(25)  NULL,
AllowEnrollFacilityOverlap BIT  NULL,
YearIncorporated NUMERIC(18,0)  NULL,
IRSStatus VARCHAR(100)  NULL,
Funder VARCHAR(MAX)  NULL,
HighPriority INT  NULL,
LowPriority INT  NULL,
ParentVendorID INT  NULL,
AllowRecurringEnrollOverlap BIT  NULL,
DocumentRouting VARCHAR(100)  NULL,
MasterSanctionLevel VARCHAR(100)  NULL,
SHIPAgencyID VARCHAR(6)  NULL,
PSAID INT  NULL,
DocumentPrefix VARCHAR(50)  NULL,
IsAAA BIT  NULL,
IsAgency BIT  NULL,
AgencyIsProvider BIT  NULL,
PresumptivelyInstitutional BIT  NULL,
PlansRequireValidations BIT  NULL,
FiscalRegion VARCHAR(100)  NULL,
IndividualProvider BIT  NULL,
InRotation BIT  NULL,
AdditionalAttributes VARCHAR(MAX)  NULL,
Monitor4 INT  NULL,
LicensedForRule VARCHAR(100)  NULL,
OnlineProvAppDivision VARCHAR(MAX)  NULL,
WorkersVisible VARCHAR(100)  NULL,
VisibleConsumers VARCHAR(200)  NULL,
Constraint PK_VendorID_Vendors PRIMARY KEY CLUSTERED (VendorID)
);

CREATE TABLE VendorSanction (
VendorSanctionID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
VendorFundID INT  NULL,
SanctionType VARCHAR(100)  NOT NULL,
SanctionNumber VARCHAR(50)  NULL,
Status VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
Description VARCHAR(200)  NULL,
SanctionDate DATETIME  NULL,
MemberID INT  NULL,
Alert BIT  NULL,
Reason VARCHAR(100)  NULL,
Terms VARCHAR(MAX)  NULL,
Grounds VARCHAR(MAX)  NULL,
Comment VARCHAR(MAX)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
PublishToWebsite BIT  NULL,
WebsiteComment VARCHAR(MAX)  NULL,
PreventNewConsumer BIT  NULL,
Constraint PK_VendorSanctionID_VendorSanction PRIMARY KEY CLUSTERED (VendorSanctionID)
);

CREATE TABLE VendorSanctionAppeal (
VendorSanctionAppealID INT IDENTITY(1,1) NOT NULL,
VendorSanctionID INT  NOT NULL,
VendorAppealID INT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_VendorSanctionAppealID_VendorSanctionAppeal PRIMARY KEY CLUSTERED (VendorSanctionAppealID)
);

CREATE TABLE VENDORSERVICES (
VSERVICEID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
ACTIVEDATE DATETIME  NOT NULL,
SERVICEID INT  NOT NULL,
COST NUMERIC(19,4)  NOT NULL,
VSERVICE VARCHAR(25)  NULL,
ACTIVE BIT  NOT NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
DEGREE VARCHAR(10)  NULL,
SVCENDDATE DATETIME  NULL,
BILLABLE BIT  NOT NULL,
REQUIREPREAUTH BIT  NOT NULL,
StartAge VARCHAR(8)  NULL,
EndAge VARCHAR(8)  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
AuthAllowed BIT  NOT NULL,
AbsenteeRate NUMERIC(19,2)  NULL,
AllowDuplicates BIT  NULL,
ServiceFee VARCHAR(MAX)  NULL,
Notes VARCHAR(MAX)  NULL,
ProviderConditionApply BIT  NOT NULL,
ProviderServiceAreaApply INT  NOT NULL,
DisplayOnReferral BIT  NULL,
Phone VARCHAR(16)  NULL,
email VARCHAR(50)  NULL,
Website VARCHAR(50)  NULL,
GenericText1 VARCHAR(MAX)  NULL,
GenericText2 VARCHAR(MAX)  NULL,
RequireCredential BIT  NOT NULL,
BaseCost NUMERIC(19,4)  NULL,
AdditionalAttributes VARCHAR(MAX)  NULL,
ServiceTaxonomy VARCHAR(50)  NULL,
ServiceBillingID VARCHAR(50)  NULL,
FundCode VARCHAR(25)  NULL,
ProviderRateType VARCHAR(100)  NULL,
InternalProgram VARCHAR(MAX)  NULL,
ConsumerCounty VARCHAR(MAX)  NULL,
ServiceRatio VARCHAR(500)  NULL,
GenericText3 VARCHAR(500)  NULL,
GenericText4 VARCHAR(500)  NULL,
GenericText5 VARCHAR(500)  NULL,
GenericText6 VARCHAR(500)  NULL,
GenericText7 VARCHAR(500)  NULL,
Constraint PK_VSERVICEID_VENDORSERVICES PRIMARY KEY CLUSTERED (VSERVICEID)
);

CREATE TABLE VendorSpecialty (
VendorSpecialtyID INT IDENTITY(1,1) NOT NULL,
VendorID INT  NOT NULL,
Specialty VARCHAR(100)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
UserStamp INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
Constraint PK_VendorSpecialtyID_VendorSpecialty PRIMARY KEY CLUSTERED (VendorSpecialtyID)
);

CREATE TABLE VENDORSWORKERS (
VWID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
MEMBERID INT  NOT NULL,
ACTIVE BIT  NOT NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ReportingUnit VARCHAR(100)  NULL,
AppType VARCHAR(5)  NULL,
EndDate DATETIME  NULL,
StartDate DATETIME  NULL,
generictext1 VARCHAR(100)  NULL,
genericdate1 DATETIME  NULL,
genericdate2 DATETIME  NULL,
genericdate3 DATETIME  NULL,
genericdate4 DATETIME  NULL,
UserStamp INT  NOT NULL,
upload BIT  NULL,
download BIT  NULL,
PrimaryProvider BIT  NOT NULL,
ExcludeAPSInvestigator BIT  NOT NULL,
ExcludeAPSScreener BIT  NOT NULL,
ExcludeAPSIntakeWorker BIT  NOT NULL,
Constraint PK_VWID_VENDORSWORKERS PRIMARY KEY CLUSTERED (VWID)
);

CREATE TABLE VENDORTAXINFO (
VENDORTAXINFOID INT IDENTITY(1,1) NOT NULL,
VENDORID INT  NOT NULL,
PERMITNO VARCHAR(20)  NULL,
PERMITDATE DATETIME  NULL,
NUMLICENSEDFOR INT  NULL,
PROVIDERTYPE VARCHAR(100)  NULL,
HOWREGULATED VARCHAR(100)  NULL,
EXEMPT INT  NULL,
FICA INT  NULL,
GARNISHMENT INT  NULL,
GARNSTART DATETIME  NULL,
GARNEND DATETIME  NULL,
GARNAMOUNT NUMERIC(19,4)  NULL,
GARNPERCENT VARCHAR(8)  NULL,
GARNTOTAL NUMERIC(19,4)  NULL,
INVOICETYPE VARCHAR(10)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
GARNISHERID NUMERIC(10,0)  NULL,
SETTING VARCHAR(100)  NULL,
LOCATION VARCHAR(50)  NULL,
PROMPTPAYDAYS INT  NULL,
PROMPTPAYPERCENT VARCHAR(8)  NULL,
LICMINAGE NUMERIC(4,2)  NULL,
LICMAXAGE NUMERIC(4,2)  NULL,
APPTYPE VARCHAR(5)  NULL,
ALLOWAUTHOVERLAP INT  NULL,
ALLOWENROLLOVERLAP INT  NULL,
ALLOWPLACEMENTOVERLAP INT  NULL,
UserStamp INT  NOT NULL,
Constraint PK_VENDORTAXINFOID_VENDORTAXINFO PRIMARY KEY CLUSTERED (VENDORTAXINFOID)
);

CREATE TABLE VendorTaxWithholding (
VendTaxWithHoldID NUMERIC(10,0) IDENTITY(1,1) NOT NULL,
VendorID NUMERIC(10,0)  NULL,
VendorNo NUMERIC(10,0)  NULL,
TaxExempt VARCHAR(10)  NULL,
TaxThreshold NUMERIC(18,0)  NULL,
TaxPercentage NUMERIC(18,0)  NULL,
StartDate DATETIME  NULL,
EndDate DATETIME  NULL,
UserStamp VARCHAR(10)  NULL,
DateTimeStamp DATETIME  NULL,
AppType VARCHAR(5)  NULL,
Constraint PK_VendTaxWithHoldID_VendorTaxWithholding PRIMARY KEY CLUSTERED (VendTaxWithHoldID)
);

CREATE TABLE Version (
AppType VARCHAR(5)  NOT NULL,
VersionNumber VARCHAR(10)  NOT NULL,
GroupVersion VARCHAR(10)  NULL,
DateTimeStamp DATETIME  NOT NULL,
DELTAVERSION VARCHAR(10)  NULL,
Metadata VARCHAR(20)  NULL,
Build VARCHAR(20)  NULL
);

CREATE TABLE VersionScriptLog (
VersionScriptLogID INT IDENTITY(1,1) NOT NULL,
ScriptName VARCHAR(260)  NOT NULL,
ScriptType VARCHAR(50)  NOT NULL,
ScriptHash VARCHAR(256)  NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_VersionScriptLogID_VersionScriptLog PRIMARY KEY CLUSTERED (VersionScriptLogID)
);

CREATE TABLE Voucher (
VoucherID INT IDENTITY(1,1) NOT NULL,
DocumentNumber INT  NOT NULL,
TransactionNumber INT  NULL,
AccountCodeSegment1 VARCHAR(100)  NULL,
AccountCodeSegment2 VARCHAR(100)  NULL,
VendorID INT  NOT NULL,
DocumentAmount VARCHAR(8)  NOT NULL,
PaymentVoucherNumber VARCHAR(16)  NULL,
RemittedAmount VARCHAR(8)  NULL,
PaymentDate DATETIME  NULL,
CheckNo VARCHAR(16)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
VendorSecID INT  NULL,
AccountCodeSegment3 VARCHAR(100)  NULL,
AccountCodeSegment4 VARCHAR(100)  NULL,
AccountCodeSegment5 VARCHAR(100)  NULL,
PaymentVoucherDate DATETIME  NULL,
MemberID INT  NULL,
PayorID INT  NULL,
PVLogID INT  NULL,
DeptID VARCHAR(50)  NULL,
Region VARCHAR(50)  NULL,
Deleted BIT  NOT NULL,
Constraint PK_VoucherID_Voucher PRIMARY KEY CLUSTERED (VoucherID)
);

CREATE TABLE VoucherDetail (
VoucherDetailID INT IDENTITY(1,1) NOT NULL,
VoucherID INT  NOT NULL,
LineNumber INT  NOT NULL,
ReportOrder INT  NULL,
IndexCode VARCHAR(100)  NULL,
IndexDescription VARCHAR(100)  NULL,
SubObjectCode VARCHAR(100)  NULL,
SubObjectDescription VARCHAR(100)  NULL,
SecIndexCode VARCHAR(100)  NULL,
SecSubObjectCode VARCHAR(100)  NULL,
ReportingCategory VARCHAR(100)  NULL,
LineAmount VARCHAR(8)  NOT NULL,
LineAction VARCHAR(100)  NULL,
UntaxedLineAmount VARCHAR(8)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
FundOrder VARCHAR(100)  NULL,
GLAccountCodeSegment1 VARCHAR(100)  NULL,
GLAccountCodeSegment2 VARCHAR(100)  NULL,
GLAccountCodeSegment3 VARCHAR(100)  NULL,
GLAccountCodeSegment4 VARCHAR(100)  NULL,
GLAccountCodeSegment5 VARCHAR(100)  NULL,
VendorContractNo VARCHAR(50)  NULL,
VendorInvoiceNumber VARCHAR(30)  NULL,
GLAccountCodeSegment6 VARCHAR(100)  NULL,
VendorID INT  NULL,
PaymentDate DATETIME  NULL,
CheckNo VARCHAR(50)  NULL,
RemittedAmount NUMERIC(19,2)  NULL,
Deleted BIT  NOT NULL,
Constraint PK_VoucherDetailID_VoucherDetail PRIMARY KEY CLUSTERED (VoucherDetailID)
);

CREATE TABLE WORDMERGEDOCFUNDCODES (
MERGEID INT  NOT NULL,
FUNDCODE VARCHAR(25)  NULL,
WORDMERGEDOCFUNDCODEID INT IDENTITY(1,1) NOT NULL,
SITEID INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_WORDMERGEDOCFUNDCODEID_WORDMERGEDOCFUNDCODES PRIMARY KEY CLUSTERED (WORDMERGEDOCFUNDCODEID)
);

CREATE TABLE WORDMERGEDOCS (
MERGEID INT IDENTITY(1,1) NOT NULL,
MERGEDOCDESC VARCHAR(50)  NULL,
CATEGORY VARCHAR(100)  NULL,
DOCNAME VARCHAR(MAX)  NULL,
SQLM VARCHAR(MAX)  NULL,
ACTIVE INT  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
QTYPE VARCHAR(15)  NULL,
SORTORDER INT  NULL,
SQLDESC VARCHAR(255)  NULL,
TRIGGERSCREEN VARCHAR(50)  NULL,
TRIGGEREVENT VARCHAR(50)  NULL,
FILETYPE VARCHAR(20)  NULL,
STATUS VARCHAR(100)  NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_MERGEID_WORDMERGEDOCS PRIMARY KEY CLUSTERED (MERGEID)
);

CREATE TABLE WordMergeQuery (
WordMergeQueryID INT IDENTITY(1,1) NOT NULL,
MergeType VARCHAR(100)  NOT NULL,
MergeCategory VARCHAR(100)  NOT NULL,
QueryName VARCHAR(100)  NOT NULL,
SqlQuery VARCHAR(MAX)  NOT NULL,
Description VARCHAR(1000)  NULL,
IsCustom BIT  NOT NULL,
IsActive BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_WordMergeQueryID_WordMergeQuery PRIMARY KEY CLUSTERED (WordMergeQueryID)
);

CREATE TABLE WordMergeTemplate (
WordMergeTemplateID INT IDENTITY(1,1) NOT NULL,
WordMergeQueryID INT  NULL,
TemplateName VARCHAR(100)  NOT NULL,
FileName VARCHAR(100)  NULL,
Description VARCHAR(1000)  NULL,
FileBytes VARCHAR(MAX)  NULL,
IsActive BIT  NOT NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
LockTemplate BIT  NULL,
AttachToNotes VARCHAR(10)  NULL,
AttachToNoteAs VARCHAR(10)  NOT NULL,
Constraint PK_WordMergeTemplateID_WordMergeTemplate PRIMARY KEY CLUSTERED (WordMergeTemplateID)
);

CREATE TABLE WORKERDEGREES (
WDEGREEID NUMERIC(10,0)  NOT NULL,
DEGREE VARCHAR(50)  NULL,
MEMBERID INT  NOT NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE WorkerDetReview (
WorkerDetReviewID INT IDENTITY(1,1) NOT NULL,
WAssessID INT  NOT NULL,
Scale VARCHAR(255)  NULL,
Item VARCHAR(MAX)  NULL,
Score NUMERIC(10,0)  NULL,
Comments VARCHAR(MAX)  NULL,
YN INT  NULL,
LookupValue VARCHAR(50)  NULL,
ScaleID NUMERIC(10,0)  NOT NULL,
AppType VARCHAR(50)  NULL,
DateTimeStamp DATETIME  NOT NULL,
UserStamp INT  NOT NULL,
QuestionID VARCHAR(15)  NULL,
SecID VARCHAR(500)  NULL,
Constraint PK_WorkerDetReviewID_WorkerDetReview PRIMARY KEY CLUSTERED (WorkerDetReviewID)
);

CREATE TABLE WORKERLANGUAGES (
WLANGUAGEID INT IDENTITY(1,1) NOT NULL,
LANGUAGE VARCHAR(100)  NULL,
MEMBERID INT  NOT NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL,
Constraint PK_WLANGUAGEID_WORKERLANGUAGES PRIMARY KEY CLUSTERED (WLANGUAGEID)
);

CREATE TABLE WORKERLICENSES (
WLICENSEID INT IDENTITY(1,1) NOT NULL,
LICENSE VARCHAR(100)  NULL,
MEMBERID INT  NOT NULL,
LICENSENUM VARCHAR(20)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
STARTDATE DATETIME  NULL,
STOPDATE DATETIME  NULL,
APPTYPE VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
Constraint PK_WLICENSEID_WORKERLICENSES PRIMARY KEY CLUSTERED (WLICENSEID)
);

CREATE TABLE WorkerPosition (
WorkerPositionID INT IDENTITY(1,1) NOT NULL,
MemberID INT  NOT NULL,
Position VARCHAR(100)  NOT NULL,
PositionStartDate DATETIME  NOT NULL,
PositionEndDate DATETIME  NULL,
VWID INT  NULL,
PositionComments VARCHAR(500)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_WorkerPositionID_WorkerPosition PRIMARY KEY CLUSTERED (WorkerPositionID)
);

CREATE TABLE WORKERPRIVILEGES (
WPRIVILEGEID NUMERIC(10,0)  NOT NULL,
PRIVILEGEAREA VARCHAR(100)  NULL,
MEMBERID INT  NOT NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE WorkerReview (
WAssessID INT IDENTITY(1,1) NOT NULL,
MemberID INT  NOT NULL,
Review VARCHAR(100)  NULL,
Rater INT  NULL,
Status VARCHAR(100)  NULL,
Fundcode VARCHAR(25)  NULL,
Reviewdate DATETIME  NULL,
ApprovedBy INT  NULL,
ApprovedDate DATETIME  NULL,
ApprovedUser VARCHAR(100)  NULL,
Expired BIT  NULL,
ExpirationDate DATETIME  NULL,
ScreenDesignID INT  NOT NULL,
AppType VARCHAR(5)  NULL,
UserStamp INT  NOT NULL,
DateTimeStamp DATETIME  NOT NULL,
Constraint PK_WAssessID_WorkerReview PRIMARY KEY CLUSTERED (WAssessID)
);

CREATE TABLE WORKERS (
MEMBERID INT IDENTITY(1,1) NOT NULL,
STARTDATE DATETIME  NULL,
ENDDATE DATETIME  NULL,
STAFFID VARCHAR(30)  NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NOT NULL,
ACTIVE BIT  NOT NULL,
HIGHESTDEGREE VARCHAR(100)  NULL,
UNIT VARCHAR(100)  NULL,
OFFICE VARCHAR(100)  NULL,
EXCLUDE BIT  NOT NULL,
LICENSE VARCHAR(100)  NULL,
GENERICTEXT1 VARCHAR(35)  NULL,
GENERICTEXT2 VARCHAR(35)  NULL,
GENERICTEXT3 VARCHAR(35)  NULL,
GENERICDROPDOWN1 VARCHAR(100)  NULL,
GENERICDROPDOWN2 VARCHAR(100)  NULL,
GENERICDROPDOWN3 VARCHAR(100)  NULL,
GENERICDATE1 DATETIME  NULL,
GENERICDATE2 DATETIME  NULL,
GENERICDATE3 DATETIME  NULL,
RELATIONSHIP VARCHAR(50)  NULL,
APPTYPE VARCHAR(5)  NULL,
Rater NUMERIC(10,0)  NULL,
GenericDate4 DATETIME  NULL,
UserStamp INT  NOT NULL,
CONTACTID INT  NOT NULL,
Identifier VARCHAR(15)  NULL,
IRContact BIT  NULL,
Salutation VARCHAR(100)  NULL,
APSWorkerType VARCHAR(MAX)  NULL,
APSRegion VARCHAR(MAX)  NULL,
DesignatedZipCode VARCHAR(MAX)  NULL,
DesignatedCounty VARCHAR(MAX)  NULL,
SHIPCounselorID INT  NULL,
SHIPCounselorCounty VARCHAR(100)  NULL,
SHIPCounselorZip VARCHAR(10)  NULL,
SHIPCounselorFIPSCode VARCHAR(5)  NULL,
WorkerDisability VARCHAR(300)  NULL,
Constraint PK_MEMBERID_WORKERS PRIMARY KEY CLUSTERED (MEMBERID)
);

CREATE TABLE WORKERSPECIALTIES (
WSPECIALTYID NUMERIC(18,0)  NOT NULL,
SPECIALTY VARCHAR(100)  NULL,
MEMBERID INT  NOT NULL,
COMMENTS VARCHAR(MAX)  NULL,
DATETIMESTAMP DATETIME  NULL,
UserStamp INT  NOT NULL
);

CREATE TABLE WorkflowLog (
WorkflowLogID INT IDENTITY(1,1) NOT NULL,
Type VARCHAR(10)  NULL,
Source VARCHAR(50)  NULL,
Name VARCHAR(100)  NULL,
Message VARCHAR(200)  NULL,
CaseNo INT  NULL,
Date DATETIME  NOT NULL,
Constraint PK_WorkflowLogID_WorkflowLog PRIMARY KEY CLUSTERED (WorkflowLogID)
);

CREATE TABLE ZIPCODES (
ZIPCODE VARCHAR(10)  NOT NULL,
CITY VARCHAR(30)  NULL,
STATE VARCHAR(100)  NULL,
AREACODE VARCHAR(3)  NULL
);


-- Adding Foreign Key Constraints

ALTER TABLE ActivityClaimLink ADD FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID);

ALTER TABLE ActivityClaimLink ADD FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ActivityClaimLink ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE ActivityDetail ADD FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID);

ALTER TABLE Activity ADD FOREIGN KEY (AuthServiceID) REFERENCES AuthServices(AuthServiceID);

ALTER TABLE Activity ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE Activity ADD FOREIGN KEY (FacilityID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE Activity ADD FOREIGN KEY (ISComboCodeID) REFERENCES ISComboCodes(ISComboCodeID);

ALTER TABLE Activity ADD FOREIGN KEY (OpenID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE Activity ADD FOREIGN KEY (PayerID) REFERENCES Payors(PayorID);

ALTER TABLE Activity ADD FOREIGN KEY (VENDORGROUPID) REFERENCES VendorGroup(VendorGroupID);

ALTER TABLE Activity ADD FOREIGN KEY (AgencyID) REFERENCES Vendors(VendorID);

ALTER TABLE Activity ADD FOREIGN KEY (InternalProgramID) REFERENCES Vendors(VendorID);

ALTER TABLE Activity ADD FOREIGN KEY (ServiceProviderID) REFERENCES Vendors(VendorID);

ALTER TABLE Activity ADD FOREIGN KEY (VServiceID) REFERENCES VENDORSERVICES(VSERVICEID);

ALTER TABLE Activity ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE APIAccessLog ADD FOREIGN KEY (APIID) REFERENCES API(APIID);

ALTER TABLE APIAccessLog ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE API ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE Appointment ADD FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID);

ALTER TABLE Appointment ADD FOREIGN KEY (OrigApptID) REFERENCES Appointment(AppointmentID);

ALTER TABLE Appointment ADD FOREIGN KEY (EnrollGroupID) REFERENCES EnrollGroup(EnrollGroupID);

ALTER TABLE Appointment ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE Appointment ADD FOREIGN KEY (OpenID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE Appointment ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE Appointment ADD FOREIGN KEY (VServiceID) REFERENCES VENDORSERVICES(VSERVICEID);

ALTER TABLE ApptParticipant ADD FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID);

ALTER TABLE ApptParticipant ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ASSESSMENTREVIEW ADD FOREIGN KEY (ENROLLID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE ASSESSMENTREVIEW ADD FOREIGN KEY (ExternalRater) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ASSESSMENTREVIEW ADD FOREIGN KEY (Agency) REFERENCES Vendors(VendorID);

ALTER TABLE ASSESSMENTREVIEW ADD FOREIGN KEY (ServiceProvider) REFERENCES Vendors(VendorID);

ALTER TABLE AuthServicePayments ADD FOREIGN KEY (AuthorizationID) REFERENCES Auth(Authid);

ALTER TABLE AuthServicePayments ADD FOREIGN KEY (AuthServiceID) REFERENCES AuthServices(AuthServiceID);

ALTER TABLE AuthServicePayment ADD FOREIGN KEY (AuthServiceID) REFERENCES AuthServices(AuthServiceID);

ALTER TABLE AuthServicesErrorMessage ADD FOREIGN KEY (AuthServiceId) REFERENCES AuthServices(AuthServiceID);

ALTER TABLE AuthServicesErrorMessage ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE AuthServices ADD FOREIGN KEY (Authid) REFERENCES Auth(Authid);

ALTER TABLE Auth ADD FOREIGN KEY (OriginatingPO) REFERENCES Auth(Authid);

ALTER TABLE Auth ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE Auth ADD FOREIGN KEY (InsuranceID) REFERENCES INSURANCE(InsuranceID);

ALTER TABLE Auth ADD FOREIGN KEY (NoteID) REFERENCES NOTES(NoteID);

ALTER TABLE Auth ADD FOREIGN KEY (OPENID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE Auth ADD FOREIGN KEY (PAYORID) REFERENCES Payors(PayorID);

ALTER TABLE Auth ADD FOREIGN KEY (RoleID) REFERENCES Role(RoleID);

ALTER TABLE Auth ADD FOREIGN KEY (VENDORID) REFERENCES Vendors(VendorID);

ALTER TABLE BulkWordMergeDetail ADD FOREIGN KEY (NoteId) REFERENCES NOTES(NoteID);

ALTER TABLE BulkWordMergeDetail ADD FOREIGN KEY (MergedBy) REFERENCES Users(USERID);

ALTER TABLE BulkWordMergeDetail ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE BulkWordMerge ADD FOREIGN KEY (DistributionGroupId) REFERENCES DistributionGroup(DistributionGroupId);

ALTER TABLE BulkWordMerge ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE BulkWordMerge ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE BulkWordMerge ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE BusinessDayClosure ADD FOREIGN KEY (FundCode) REFERENCES SITE(FUNDCODE);

ALTER TABLE BusinessPoliciesRules ADD FOREIGN KEY (BusinessRuleID) REFERENCES BusinessRules(BusinessRuleID);

ALTER TABLE BusinessRulesMessages ADD FOREIGN KEY (BusinessRuleID) REFERENCES BusinessRules(BusinessRuleID);

ALTER TABLE BusinessRulesTracking ADD FOREIGN KEY (BusinessRuleID) REFERENCES BusinessRules(BusinessRuleID);

ALTER TABLE BusinessRulesTracking ADD FOREIGN KEY (PlanValidationID) REFERENCES PlanValidation(PlanValidationID);

ALTER TABLE Card ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE Card ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE CareGiverRecipient ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE CareGiverRecipient ADD FOREIGN KEY (ClientID) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE CareGiverRecipient ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE CCILog ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE Charge ADD FOREIGN KEY (ChargeCodeID) REFERENCES ChargeCode(ChargeCodeID);

ALTER TABLE Charge ADD FOREIGN KEY (JacketID) REFERENCES Jacket(JacketID);

ALTER TABLE Claim ADD FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID);

ALTER TABLE ClaimDentalMissingTeeth ADD FOREIGN KEY (ClaimDentalID) REFERENCES ClaimDental(ClaimDentalID);

ALTER TABLE ClaimDental ADD FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ClaimETRRDetail ADD FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ClaimETRRDetail ADD FOREIGN KEY (ClaimETRRID) REFERENCES ClaimETRR(ClaimETRRID);

ALTER TABLE ClaimETRRError ADD FOREIGN KEY (ClaimETRRDetailID) REFERENCES ClaimETRRDetail(ClaimETRRDetailID);

ALTER TABLE ClaimInstitutional ADD FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ClaimProvider ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE ClaimProvider ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE ClaimPVServiceCodes ADD FOREIGN KEY (ServiceID) REFERENCES SERVICECODES(SERVICEID);

ALTER TABLE ClaimPVServiceCodes ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ClaimRemittance ADD FOREIGN KEY (PVLogID) REFERENCES PVLog(PVLogID);

ALTER TABLE ClaimResubQueue ADD FOREIGN KEY (OriginalClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ClaimResubQueue ADD FOREIGN KEY (ResubClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ClaimResubQueue ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ClaimRollupServices ADD FOREIGN KEY (ClaimRollupID) REFERENCES ClaimRollup(ClaimRollupID);

ALTER TABLE ClaimRollupServices ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE ClaimRollup ADD FOREIGN KEY (ClaimRollupBatchID) REFERENCES ClaimRollupBatch(ClaimRollupBatchID);

ALTER TABLE ClaimServiceAdjustment ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE ClaimServiceDental ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE ClaimServiceDiagnosis ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE CLaimServicePayment ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE CLaimServicePayment ADD FOREIGN KEY (OtherPayerID) REFERENCES OtherPayer(OtherPayerID);

ALTER TABLE ClaimService ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE ClaimServiceProvider ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE ClaimServiceProvider ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE ClaimServiceProvider ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE ClaimServiceRemittance ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE CLaimServiceRemittanceCode ADD FOREIGN KEY (ClaimServiceID) REFERENCES ClaimService(ClaimServiceID);

ALTER TABLE ClaimSubscriber ADD FOREIGN KEY (OtherPayerID) REFERENCES OtherPayer(OtherPayerID);

ALTER TABLE ClaimTPLInfo ADD FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID);

ALTER TABLE ConsumerModuleUser ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ConsumerModuleUser ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ConsumerModuleUserRelation ADD FOREIGN KEY (RecID) REFERENCES RELATEREVIEW(RECID);

ALTER TABLE ConsumerModuleUserRelation ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ContactAddress ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ContactEmail ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ContactEmail ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ContactIdentifier ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ContactIdentifier ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ContactName ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ContactName ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ContactPhone ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE ContactPhone ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE CSRErrorCode ADD FOREIGN KEY (AdjustmentCodeID) REFERENCES AdjustmentCode(AdjustmentCodeID);

ALTER TABLE CustomFormField ADD FOREIGN KEY (FormId) REFERENCES CustomForm(FormId);

ALTER TABLE CustomFormFieldInstance ADD FOREIGN KEY (InstanceId) REFERENCES CustomFormInstance(InstanceId);

ALTER TABLE CustomFormFieldInstance ADD FOREIGN KEY (FieldId) REFERENCES CustomFormField(FieldId);

ALTER TABLE CustomFormFieldOption ADD FOREIGN KEY (FieldId) REFERENCES CustomFormField(FieldId);

ALTER TABLE CustomFormInstance ADD FOREIGN KEY (UserId) REFERENCES CustomFormUser(UserId);

ALTER TABLE CustomFormInstance ADD FOREIGN KEY (FormId) REFERENCES CustomForm(FormId);

ALTER TABLE DashLevelRole ADD FOREIGN KEY (RoleID) REFERENCES Role(RoleID);

ALTER TABLE DIAGREVIEW ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE DIAGREVIEW ADD FOREIGN KEY (OpenID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE DistributionGroup ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE DistributionGroupFilter ADD FOREIGN KEY (DistributionGroupId) REFERENCES DistributionGroup(DistributionGroupId);

ALTER TABLE DistributionGroupFilter ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE DistributionGroupFilterDetail ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ELIGIBILITY ADD FOREIGN KEY (InsuranceID) REFERENCES INSURANCE(InsuranceID);

ALTER TABLE ELIGIBILITY ADD FOREIGN KEY (ISComboCodeID) REFERENCES ISComboCodes(ISComboCodeID);

ALTER TABLE EnrollFacilities ADD FOREIGN KEY (ENROLLID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE EnrollFacilities ADD FOREIGN KEY (FACILITYID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE EnrollFacilities ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE EnrollFacilityBed ADD FOREIGN KEY (ENROLLFACID) REFERENCES EnrollFacilities(ENFACID);

ALTER TABLE ENROLLMENTS ADD FOREIGN KEY (OPENCLOSEID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE ENROLLMENTS ADD FOREIGN KEY (REFERREDBY) REFERENCES WORKERS(MEMBERID);

ALTER TABLE ExternalDataStoreVendorsMapping ADD FOREIGN KEY (HumanService_VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE FACILITIES ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE FACILITIES ADD FOREIGN KEY (VENDORID) REFERENCES Vendors(VendorID);

ALTER TABLE FilterSetting ADD FOREIGN KEY (PageID) REFERENCES Page(PageID);

ALTER TABLE FilterSetting ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE FilterSettingDetail ADD FOREIGN KEY (FieldControlID) REFERENCES FieldControl(FieldControlID);

ALTER TABLE FilterSettingDetail ADD FOREIGN KEY (FilterSettingID) REFERENCES FilterSetting(FilterSettingID);

ALTER TABLE FilterSettingDetail ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE FundCodeAuthMapping ADD FOREIGN KEY (SiteID) REFERENCES SITE(SITEID);

ALTER TABLE Goal ADD FOREIGN KEY (GoalCodeID) REFERENCES GoalCode(GoalCodeID);

ALTER TABLE Goal ADD FOREIGN KEY (NeedID) REFERENCES Need(NeedID);

ALTER TABLE GroupFilter ADD FOREIGN KEY (DistributionGroupId) REFERENCES DistributionGroup(DistributionGroupId);

ALTER TABLE GroupFilter ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE GroupFilterDetail ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE GroupSeries ADD FOREIGN KEY (FacilityID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE GroupSeries ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE GroupSeries ADD FOREIGN KEY (VendorGroupID) REFERENCES VendorGroup(VendorGroupID);

ALTER TABLE GroupSeries ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE GroupSeriesException ADD FOREIGN KEY (FacilityID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE GroupSeriesException ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE GroupSeriesException ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE GroupSeriesParticipant ADD FOREIGN KEY (EnrollGroupID) REFERENCES EnrollGroup(EnrollGroupID);

ALTER TABLE GroupSeriesWorker ADD FOREIGN KEY (GroupSeriesID) REFERENCES GroupSeries(GroupSeriesID);

ALTER TABLE HISAllegation ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISAllegationPerpetrator ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE HISAllegationPerpetrator ADD FOREIGN KEY (AllegationID) REFERENCES HISAllegation(AllegationID);

ALTER TABLE HISAllegationPerpetrator ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISAppeal ADD FOREIGN KEY (AssessID) REFERENCES IncidentReview(AssessID);

ALTER TABLE HISAppointmentRenter ADD FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID);

ALTER TABLE HISAppointmentRenter ADD FOREIGN KEY (INQUIRYID) REFERENCES INQUIRY(INQUIRYID);

ALTER TABLE HISAssessmentSuggestedService ADD FOREIGN KEY (ServiceID) REFERENCES SERVICECODES(SERVICEID);

ALTER TABLE HISAssessmentSuggestedService ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISBenefitEnrollment ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE HISBenefitEnrollment ADD FOREIGN KEY (PayorID) REFERENCES Payors(PayorID);

ALTER TABLE HISBenefitEnrollmentBatch ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISClientDonationPayment ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISClientDonationRequest ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE HISClientDonationRequest ADD FOREIGN KEY (CreatedUserID) REFERENCES Users(USERID);

ALTER TABLE HISClientDonationRequest ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISContactEntryExitTracking ADD FOREIGN KEY (CardID) REFERENCES Card(CardID);

ALTER TABLE HISContactEntryExitTracking ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE HISContactEntryExitTracking ADD FOREIGN KEY (FacilityID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE HISDailyServiceSchedule ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISEFormImage ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISEFormImage ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISIncidentInquiry ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISIncidentInquiry ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISIncidentLink ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISIncidentLink ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISInquiryLink ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISInquiryLink ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISIntegrationTransaction ADD FOREIGN KEY (IntegrationID) REFERENCES HISIntegration(IntegrationID);

ALTER TABLE HISNeedAssessment ADD FOREIGN KEY (NeedID) REFERENCES Need(NeedID);

ALTER TABLE HISNeedAssessment ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISParticipant ADD FOREIGN KEY (PeopleID) REFERENCES HISPeople(PeopleID);

ALTER TABLE HISParticipant ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISParticipant ADD FOREIGN KEY (ProviderID) REFERENCES Vendors(VendorID);

ALTER TABLE HISParticipantAddress ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE HISParticipantAddress ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISParticipantAddress ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISParticipantEmail ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE HISParticipantEmail ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISParticipantEmail ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISParticipantIdentifier ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE HISParticipantIdentifier ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISParticipantIdentifier ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISParticipantName ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE HISParticipantName ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISParticipantName ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISParticipantPhone ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE HISParticipantPhone ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISParticipantPhone ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPeople ADD FOREIGN KEY (ContactID) REFERENCES CONTACT(CONTACTID);

ALTER TABLE HISPeople ADD FOREIGN KEY (Caseno) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE HISPeople ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISPeople ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPeople ADD FOREIGN KEY (ProviderID) REFERENCES Vendors(VendorID);

ALTER TABLE HISPeople ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE HISPeopleAddress ADD FOREIGN KEY (PeopleID) REFERENCES HISPeople(PeopleID);

ALTER TABLE HISPeopleAddress ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISPeopleAddress ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPeopleEmail ADD FOREIGN KEY (PeopleID) REFERENCES HISPeople(PeopleID);

ALTER TABLE HISPeopleEmail ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISPeopleEmail ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPeopleIdentifier ADD FOREIGN KEY (PeopleID) REFERENCES HISPeople(PeopleID);

ALTER TABLE HISPeopleIdentifier ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISPeopleIdentifier ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPeopleName ADD FOREIGN KEY (PeopleID) REFERENCES HISPeople(PeopleID);

ALTER TABLE HISPeopleName ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISPeopleName ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPeoplePhone ADD FOREIGN KEY (PeopleID) REFERENCES HISPeople(PeopleID);

ALTER TABLE HISPeoplePhone ADD FOREIGN KEY (CreatedBy) REFERENCES Users(USERID);

ALTER TABLE HISPeoplePhone ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPlace ADD FOREIGN KEY (Userstamp) REFERENCES Users(USERID);

ALTER TABLE HISPlannedServiceAssessment ADD FOREIGN KEY (PlanServiceID) REFERENCES PLANNEDSERVICES(PLANSERVICEID);

ALTER TABLE HISPlannedServiceAssessment ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISPremiumPayment ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE HISPremiumPaymentBatch ADD FOREIGN KEY (PayorID) REFERENCES Payors(PayorID);

ALTER TABLE HISRECURRINGENROLLMENT ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE HISRECURRINGENROLLMENT ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISScreenQuestionCondition ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISServiceCodeTaxonomy ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISServiceCodeTaxonomy ADD FOREIGN KEY (TaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISServiceCodeTaxonomy ADD FOREIGN KEY (ServiceID) REFERENCES SERVICECODES(SERVICEID);

ALTER TABLE HISServiceSchedule ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISTaxonomy ADD FOREIGN KEY (ParentTaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISTaxonomy ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISTaxonomyExternalTerm ADD FOREIGN KEY (TaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISTaxonomyExternalTerm ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISTaxonomyOldCode ADD FOREIGN KEY (TaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISTaxonomyOldCode ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISTaxonomyRelatedConcept ADD FOREIGN KEY (TaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISTaxonomyRelatedConcept ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISTaxonomySeeAlsoCode ADD FOREIGN KEY (TaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISTaxonomySeeAlsoCode ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE HISTaxonomyUseReference ADD FOREIGN KEY (TaxonomyID) REFERENCES HISTaxonomy(TaxonomyID);

ALTER TABLE HISTaxonomyUseReference ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE Incident ADD FOREIGN KEY (TertiaryMemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Incident ADD FOREIGN KEY (LawAgencyVendorID) REFERENCES Vendors(VendorID);

ALTER TABLE Incident ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE IncidentAssociation ADD FOREIGN KEY (IncidentID) REFERENCES Incident(IncidentID);

ALTER TABLE IncidentDetReview ADD FOREIGN KEY (AssessID) REFERENCES IncidentReview(AssessID);

ALTER TABLE IncidentRecipient ADD FOREIGN KEY (IncidentID) REFERENCES Incident(IncidentID);

ALTER TABLE IncidentRecipient ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE IncidentReview ADD FOREIGN KEY (IncidentID) REFERENCES Incident(IncidentID);

ALTER TABLE INQDocumentATION ADD FOREIGN KEY (Agency) REFERENCES Vendors(VendorID);

ALTER TABLE INQDocumentATION ADD FOREIGN KEY (Program) REFERENCES Vendors(VendorID);

ALTER TABLE INQDocumentATION ADD FOREIGN KEY (ServiceProvider) REFERENCES Vendors(VendorID);

ALTER TABLE INQUIRY ADD FOREIGN KEY (LawAgencyVendorID) REFERENCES Vendors(VendorID);

ALTER TABLE INQUIRY ADD FOREIGN KEY (AgencyID) REFERENCES Vendors(VendorID);

ALTER TABLE INQUIRY ADD FOREIGN KEY (ProgramID) REFERENCES Vendors(VendorID);

ALTER TABLE INQUIRY ADD FOREIGN KEY (ScreeningMemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Intervention ADD FOREIGN KEY (InterventionCodeID) REFERENCES InterventionCode(InterventionCodeID);

ALTER TABLE Intervention ADD FOREIGN KEY (NeedID) REFERENCES Need(NeedID);

ALTER TABLE Intervention ADD FOREIGN KEY (ObjectiveID) REFERENCES Objective(ObjectiveID);

ALTER TABLE Inventory ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE Inventory ADD FOREIGN KEY (Location) REFERENCES Vendors(VendorID);

ALTER TABLE Inventory ADD FOREIGN KEY (ConsumerDelBy) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Inventory ADD FOREIGN KEY (Contact) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Inventory ADD FOREIGN KEY (OfficeRecBy) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Inventory ADD FOREIGN KEY (RecoveryBy) REFERENCES WORKERS(MEMBERID);

ALTER TABLE ISComboCodes ADD FOREIGN KEY (IndexCodeID) REFERENCES IndexCode(IndexCodeID);

ALTER TABLE ISComboCodes ADD FOREIGN KEY (PayorID) REFERENCES Payors(PayorID);

ALTER TABLE ISComboCodes ADD FOREIGN KEY (SubObjectCodeID) REFERENCES SubObjectCode(SubObjectCodeID);

ALTER TABLE ISOBudget ADD FOREIGN KEY (ISComboCodeID) REFERENCES ISComboCodes(ISComboCodeID);

ALTER TABLE Jacket ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE Jacket ADD FOREIGN KEY (OpenID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE LinkedFundCodes ADD FOREIGN KEY (ParentFundCode) REFERENCES SITE(FUNDCODE);

ALTER TABLE LinkedFundCodes ADD FOREIGN KEY (ChildFundCode) REFERENCES SITE(FUNDCODE);

ALTER TABLE LinkLegacy ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE MatchPercent ADD FOREIGN KEY (FundCode) REFERENCES SITE(FUNDCODE);

ALTER TABLE MEDICATIONREVIEW ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE MEDICATIONREVIEW ADD FOREIGN KEY (OpenID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE MONTHCODES ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE MONTHLYDATES ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE MRDDWaitList ADD FOREIGN KEY (CaseNo) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE MyWorkLink ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE Need ADD FOREIGN KEY (NeedCodeID) REFERENCES NeedCode(NeedCodeID);

ALTER TABLE NeedCodeCategory ADD FOREIGN KEY (NeedCodeID) REFERENCES NeedCode(NeedCodeID);

ALTER TABLE NeedCodeFundCode ADD FOREIGN KEY (NeedCodeID) REFERENCES NeedCode(NeedCodeID);

ALTER TABLE NOTES ADD FOREIGN KEY (ExternalNoteBy) REFERENCES CONTACT(CONTACTID);

ALTER TABLE NOTES ADD FOREIGN KEY (ParticipantID) REFERENCES HISParticipant(ParticipantID);

ALTER TABLE NOTES ADD FOREIGN KEY (AgencyID) REFERENCES Vendors(VendorID);

ALTER TABLE NOTES ADD FOREIGN KEY (ServiceProviderID) REFERENCES Vendors(VendorID);

ALTER TABLE NotesDocuments ADD FOREIGN KEY (NoteID) REFERENCES NOTES(NoteID);

ALTER TABLE Objective ADD FOREIGN KEY (GoalID) REFERENCES Goal(GoalID);

ALTER TABLE Objective ADD FOREIGN KEY (NeedID) REFERENCES Need(NeedID);

ALTER TABLE Objective ADD FOREIGN KEY (ObjectiveCodeID) REFERENCES ObjectiveCode(ObjectiveCodeID);

ALTER TABLE OGMAINT ADD FOREIGN KEY (CASENO) REFERENCES DEMOGRAPHICS(CASENO);

ALTER TABLE OGMAINT ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE OGMAINT ADD FOREIGN KEY (VENDFUNDID) REFERENCES VENDFUNDCODES(VENDFUNDID);

ALTER TABLE OtherPayer ADD FOREIGN KEY (PayerID) REFERENCES Payors(PayorID);

ALTER TABLE Page ADD FOREIGN KEY (PageSetID) REFERENCES PageSet(PageSetID);

ALTER TABLE PayorFundCode ADD FOREIGN KEY (PAYORID) REFERENCES Payors(PayorID);

ALTER TABLE Payors ADD FOREIGN KEY (PayorType) REFERENCES PayorTypes(PAYORTYPE);

ALTER TABLE PlanCode ADD FOREIGN KEY (GoalCodeID) REFERENCES GoalCode(GoalCodeID);

ALTER TABLE PlanCode ADD FOREIGN KEY (InterventionCodeID) REFERENCES InterventionCode(InterventionCodeID);

ALTER TABLE PlanCode ADD FOREIGN KEY (NeedCodeID) REFERENCES NeedCode(NeedCodeID);

ALTER TABLE PlanCode ADD FOREIGN KEY (ObjectiveCodeID) REFERENCES ObjectiveCode(ObjectiveCodeID);

ALTER TABLE PlanDetReview ADD FOREIGN KEY (AssessID) REFERENCES PlanReview(AssessID);

ALTER TABLE PLANNEDSERVICES ADD FOREIGN KEY (AuthServiceID) REFERENCES AuthServices(AuthServiceID);

ALTER TABLE PLANNEDSERVICES ADD FOREIGN KEY (PayorID) REFERENCES Payors(PayorID);

ALTER TABLE PLANNEDSERVICES ADD FOREIGN KEY (ServiceID) REFERENCES SERVICECODES(SERVICEID);

ALTER TABLE PLANNEDSERVICES ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE PLANNEDSERVICES ADD FOREIGN KEY (VServiceID) REFERENCES VENDORSERVICES(VSERVICEID);

ALTER TABLE PlanReview ADD FOREIGN KEY (EnrollID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE PlanReview ADD FOREIGN KEY (ScreenDesignID) REFERENCES SCREENDESIGN(SCREENDESIGNID);

ALTER TABLE PLANS ADD FOREIGN KEY (ENROLLID) REFERENCES ENROLLMENTS(ENROLLID);

ALTER TABLE PLANS ADD FOREIGN KEY (OPENID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE PLANS ADD FOREIGN KEY (AgencyID) REFERENCES Vendors(VendorID);

ALTER TABLE PLANS ADD FOREIGN KEY (WORKER) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PLANS ADD FOREIGN KEY (SecondaryWorker) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PlanVersion ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE PlanVersionChildTable ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE Privacy ADD FOREIGN KEY (OpenID) REFERENCES OPENCLOSE(OPENID);

ALTER TABLE Privacy ADD FOREIGN KEY (PrivacyConsent) REFERENCES SCREENDESIGN(SCREENDESIGNID);

ALTER TABLE Privacy ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE Privacy ADD FOREIGN KEY (RevokedBy) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Privacy ADD FOREIGN KEY (GenericWorker1) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Privacy ADD FOREIGN KEY (GenericWorker2) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Privacy ADD FOREIGN KEY (GenericWorker3) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (PrivacyID) REFERENCES Privacy(PrivacyID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (DesigneeVendorID) REFERENCES Vendors(VendorID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (DesigneeMemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (GenericWorker1) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (GenericWorker2) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (GenericWorker3) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PrivacyDesignee ADD FOREIGN KEY (RevokedBy) REFERENCES WORKERS(MEMBERID);

ALTER TABLE PrivacyDetReview ADD FOREIGN KEY (AssessID) REFERENCES PrivacyReview(AssessID);

ALTER TABLE PrivacyDetReview ADD FOREIGN KEY (ScaleID) REFERENCES SCREENQUESTIONS(SCREENSCALEID);

ALTER TABLE PrivacyDetReview ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE PrivacyReview ADD FOREIGN KEY (PrivacyID) REFERENCES Privacy(PrivacyID);

ALTER TABLE PrivacyReview ADD FOREIGN KEY (ScreenDesignID) REFERENCES SCREENDESIGN(SCREENDESIGNID);

ALTER TABLE PrivacyReview ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE PrivacyReview ADD FOREIGN KEY (Rater) REFERENCES WORKERS(MEMBERID);

ALTER TABLE Role ADD FOREIGN KEY (GroupID) REFERENCES [Group](GroupID);

ALTER TABLE ROLECHAPTER ADD FOREIGN KEY (CHAPTERID) REFERENCES Chapter(ChapterID);

ALTER TABLE ROLECHAPTER ADD FOREIGN KEY (ROLEID) REFERENCES Role(RoleID);

ALTER TABLE ROLEFIELDCONTROL ADD FOREIGN KEY (FIELDCONTROLID) REFERENCES FieldControl(FieldControlID);

ALTER TABLE ROLEFIELDCONTROL ADD FOREIGN KEY (ROLEID) REFERENCES Role(RoleID);

ALTER TABLE ROLEFUNDCODE ADD FOREIGN KEY (ROLEID) REFERENCES Role(RoleID);

ALTER TABLE ROLEFUNDCODE ADD FOREIGN KEY (FUNDCODE) REFERENCES SITE(FUNDCODE);

ALTER TABLE ROLEPAGE ADD FOREIGN KEY (PAGEID) REFERENCES Page(PageID);

ALTER TABLE ROLEPAGE ADD FOREIGN KEY (ROLEID) REFERENCES Role(RoleID);

ALTER TABLE SANService ADD FOREIGN KEY (SANID) REFERENCES SAN(SanID);

ALTER TABLE SANService ADD FOREIGN KEY (SANServiceCopiedFrom) REFERENCES SANService(SANServiceID);

ALTER TABLE SANService ADD FOREIGN KEY (ServiceID) REFERENCES SERVICECODES(SERVICEID);

ALTER TABLE ScreenCatalog ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ScreenCatalogResponse ADD FOREIGN KEY (ScreenCatalogID) REFERENCES ScreenCatalog(ScreenCatalogID);

ALTER TABLE ScreenCatalogResponse ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE SCREENCONSTANTS ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ScreenDesignConfigPackage ADD FOREIGN KEY (PackageID) REFERENCES ConfigPackage(PackageID);

ALTER TABLE SCREENSIGNATORY ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE SCREENSIGNATORYPENDING ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE ServiceCodeDiagCode ADD FOREIGN KEY (DiagCodesID) REFERENCES DIAGCODES(DIAGCODESID);

ALTER TABLE ServiceCodeUnitCost ADD FOREIGN KEY (ServiceID) REFERENCES SERVICECODES(SERVICEID);

ALTER TABLE ServiceCodeUnitCost ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE SIGNATORYLISTSETUP ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE SingleWorkerSessionAttendance ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE SITEBUDGET ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE SITEFORMS ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE SITESTATE ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE SITETEXT ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE SplitPay ADD FOREIGN KEY (InsuranceID) REFERENCES INSURANCE(InsuranceID);

ALTER TABLE Strength ADD FOREIGN KEY (StrengthCodeID) REFERENCES StrengthCode(StrengthCodeID);

ALTER TABLE TedsExportLogsDetails ADD FOREIGN KEY (TedsExportId) REFERENCES TedsExportLogs(TedsExportId);

ALTER TABLE TriggerEventTypeVendor ADD FOREIGN KEY (VENDORID) REFERENCES Vendors(VendorID);

ALTER TABLE UploadDownloadFilesLog ADD FOREIGN KEY (UserID) REFERENCES Users(USERID);

ALTER TABLE UserRandomText ADD FOREIGN KEY (UserID) REFERENCES Users(USERID);

ALTER TABLE UserSecurityQuestions ADD FOREIGN KEY (UserID) REFERENCES Users(USERID);

ALTER TABLE UserSecurityQuestions ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE VENDFUNDCODES ADD FOREIGN KEY (SITEID) REFERENCES SITE(SITEID);

ALTER TABLE VendorAppeal ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE VendorAppeal ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE VendorAppeal ADD FOREIGN KEY (VendorFundID) REFERENCES VENDFUNDCODES(VENDFUNDID);

ALTER TABLE VendorAppeal ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE VendorContracts ADD FOREIGN KEY (PayorID) REFERENCES Payors(PayorID);

ALTER TABLE VendorContracts ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE VendorFacilityBed ADD FOREIGN KEY (FACILITYID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE VendorFee ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE VendorFee ADD FOREIGN KEY (VendorFundID) REFERENCES VENDFUNDCODES(VENDFUNDID);

ALTER TABLE VendorFee ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE VendorFeePayment ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE VendorFeePayment ADD FOREIGN KEY (VendorFeeID) REFERENCES VendorFee(VendorFeeID);

ALTER TABLE VendorGroup ADD FOREIGN KEY (FacilityID) REFERENCES FACILITIES(FACILITYID);

ALTER TABLE VendorGroup ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE VendorGroup ADD FOREIGN KEY (VServiceID) REFERENCES VENDORSERVICES(VSERVICEID);

ALTER TABLE VendorGroup ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE VendorSanction ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE VendorSanction ADD FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID);

ALTER TABLE VendorSanction ADD FOREIGN KEY (VendorFundID) REFERENCES VENDFUNDCODES(VENDFUNDID);

ALTER TABLE VendorSanction ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

ALTER TABLE VendorSanctionAppeal ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE VendorSanctionAppeal ADD FOREIGN KEY (VendorAppealID) REFERENCES VendorAppeal(VendorAppealID);

ALTER TABLE VENDORSWORKERS ADD FOREIGN KEY (VENDORID) REFERENCES Vendors(VendorID);

ALTER TABLE Voucher ADD FOREIGN KEY (PVLogID) REFERENCES PVLog(PVLogID);

ALTER TABLE VoucherDetail ADD FOREIGN KEY (VoucherID) REFERENCES Voucher(VoucherID);

ALTER TABLE WordMergeQuery ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE WorkerPosition ADD FOREIGN KEY (UserStamp) REFERENCES Users(USERID);

ALTER TABLE WorkerPosition ADD FOREIGN KEY (VWID) REFERENCES VENDORSWORKERS(VWID);

ALTER TABLE WorkerPosition ADD FOREIGN KEY (MemberID) REFERENCES WORKERS(MEMBERID);

