--sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.

SELECT EmployeeId, FirstName + ' ' + LastName AS FullName, Title
FROM Employee
WHERE Title = 'Sales Support Agent'