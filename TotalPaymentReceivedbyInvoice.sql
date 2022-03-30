SELECT ReceivePayment.Invoicenumber, Sum(ReceivePayment.PayAmount) AS [Total Payment]
FROM ReceivePayment
GROUP BY ReceivePayment.Invoicenumber;