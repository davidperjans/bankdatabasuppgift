SELECT
	COUNT(CASE WHEN TransactionType = 'Deposit' THEN 1 END) AS TotalDeposits,
	COUNT(CASE WHEN TransactionType = 'Withdrawal' THEN 1 END) AS TotalWithdrawals
FROM Transactions
WHERE AccountID = 2;