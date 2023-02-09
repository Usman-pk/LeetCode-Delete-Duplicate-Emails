
Select * FROM Person
WHERE id = (SELECT max(id) 
                FROM Person 
                GROUP By email
                Having Count(email) > 1)
