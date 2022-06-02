# Write your MySQL query statement below
select 
IFNULL(
    (SELECT distinct salary from Employee
order by salary desc
limit 1 offset 1), null) as SecondHighestSalary;

# select (SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 OFFSET 1) As SecondHighestSalary


# SELECT IFNULL((SELECT salary FROM Employee
# where salary < (select MAX(salary) FROM Employee)
# order by salary desc 
# limit 1), null) as SecondHighestSalary;


