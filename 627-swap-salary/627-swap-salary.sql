/* Write your T-SQL query statement below */
update Salary 
SET sex = (
    CASE 
        when sex = 'f' then 'm'
        ELSE 'f'
    END
)