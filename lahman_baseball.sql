
-- 1. What range of years for baseball games played does the provided database cover? 

-- SELECT MIN(yearid), MAX(yearid)
-- FROM teams;

-- 2. Find the name and height of the shortest player in the database. How many games did he play in? What is the name of the team for which he played?

-- SELECT namefirst, namelast, MIN(height), G-all, teamID
-- FROM people
-- INNER JOIN appearances USING (playerid)
-- GROUP BY namefirst, namelast, G-all, teamID 


3. Find all players in the database who played at Vanderbilt University. Create a list showing each player’s first and last names as well as the total salary they earned in the major leagues. Sort this list in descending order by the total salary earned. Which Vanderbilt player earned the most money in the majors?


SELECT namefirst, namelast, SUM(salary) AS total_salary
FROM collegeplaying
INNER JOIN people USING (playerid)
INNER JOIN salaries USING (playerid)
WHERE schoolid = 'vandy'
GROUP BY namefirst, namelast
ORDER BY total_salary  DESC
LIMIT 1;


