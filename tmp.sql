'CREATE TABLE ActivityClaimLink (
ActivityClaimLinkID INT IDENTITY(1,1) NOT NULL,
ActivityID INT  NOT NULL,
ClaimGUID VARCHAR(300)  NOT NULL,
ClaimID INT  NULL,
DateTimeStamp DATETIME  NOT NULL,
Userstamp INT  NOT NULL,
Constraint PK_ActivityClaimLinkID PRIMARY KEY CLUSTERED (ActivityClaimLinkID)
);'