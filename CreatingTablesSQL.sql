CREATE TABLE Customers
(
	CustomerID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(50),
	Email VARCHAR(50),
	Phone VARCHAR(10),
	Address VARCHAR(100)
);

CREATE TABLE Accounts
(
	AccountID INT PRIMARY KEY IDENTITY(1,1),
	CustomerID INT,
	AccountType VARCHAR(10),
	Balance DECIMAL(10,2),
	CreatedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions
(
	TransactionID INT PRIMARY KEY IDENTITY(1,1),
	AccountID INT,
	TransactionType VARCHAR(10),
	Amount DECIMAL(10,2),
	TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);