# Write your MySQL query statement below
# select distinct salary as SecondHighestSalary from Employee
# order by salary
# limit 1 offset 1


# select (SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 OFFSET 1) As SecondHighestSalary


SELECT IFNULL((SELECT salary FROM Employee
where salary < (select MAX(salary) FROM Employee)
group by salary
order by salary desc 
limit 1), null) as SecondHighestSalary;


