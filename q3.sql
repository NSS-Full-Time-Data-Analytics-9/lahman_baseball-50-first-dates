3. Find all players in the database who played at Vanderbilt University. Create a list showing each player’s first and last names as well as the total salary they earned in the major leagues. Sort this list in descending order by the total salary earned. Which Vanderbilt player earned the most money in the majors?


SELECT namefirst, namelast, SUM(salary) AS total_salary
FROM collegeplaying
INNER JOIN people USING (playerid)
INNER JOIN salaries USING (playerid)
WHERE schoolid = 'vandy'
GROUP BY namefirst, namelast
ORDER BY total_salary  DESC

Most money: David Price

