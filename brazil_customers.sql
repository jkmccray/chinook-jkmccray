--brazil_customers.sql: Provide a query only showing the Customers from Brazil.
SELECT FirstName + ' ' + LastName AS FullName, CustomerId, Company, Address, City, State, PostalCode, Country
FROM Customer 
WHERE Country = 'Brazil'