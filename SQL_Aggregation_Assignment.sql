
SELECT COUNT(*) AS TotalRecords
FROM dbo.StudentGrades;


SELECT AVG(Grade) AS AverageGrade
FROM dbo.StudentGrades;


SELECT MAX(Grade) AS HighestGrade
FROM dbo.StudentGrades;

SELECT MIN(Grade) AS LowestGrade
FROM dbo.StudentGrades;


SELECT COUNT(DISTINCT StudentID) AS TotalStudents
FROM dbo.StudentGrades;


SELECT CourseID, AVG(Grade) AS AverageGrade
FROM dbo.StudentGrades
GROUP BY CourseID;


SELECT Department, COUNT(DISTINCT StudentID) AS TotalStudents
FROM dbo.StudentGrades
GROUP BY Department;


SELECT CourseID, MAX(Grade) AS MaximumGrade
FROM dbo.StudentGrades
GROUP BY CourseID;


SELECT Department, MIN(Grade) AS MinimumGrade
FROM dbo.StudentGrades
GROUP BY Department;


SELECT StudentID, COUNT(DISTINCT CourseID) AS TotalCourses
FROM dbo.StudentGrades
GROUP BY StudentID;


SELECT StudentID, COUNT(DISTINCT CourseID) AS TotalCourses
FROM dbo.StudentGrades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) > 3;


SELECT Department, AVG(Grade) AS AverageGrade
FROM dbo.StudentGrades
GROUP BY Department
HAVING AVG(Grade) < 65;


SELECT StudentID, MAX(Grade) AS MaximumGrade
FROM dbo.StudentGrades
GROUP BY StudentID
HAVING MAX(Grade) = 100;


SELECT CourseID, COUNT(DISTINCT StudentID) AS TotalStudents
FROM dbo.StudentGrades
GROUP BY CourseID
HAVING COUNT(DISTINCT StudentID) >= 20;


SELECT
    StudentID,
    COUNT(DISTINCT CourseID) AS TotalCourses,
    AVG(Grade) AS AverageGrade
FROM dbo.StudentGrades
GROUP BY StudentID
HAVING COUNT(DISTINCT CourseID) >= 4
   AND AVG(Grade) > 80;


   
SELECT
    Department,
    MAX(Grade) AS MaximumGrade,
    AVG(Grade) AS AverageGrade
FROM dbo.StudentGrades
GROUP BY Department
HAVING MAX(Grade) >= 2 * AVG(Grade);

SELECT
    CourseID,
    AVG(Grade) AS AverageGrade
FROM dbo.StudentGrades
GROUP BY CourseID
HAVING AVG(Grade) > (
    SELECT AVG(Grade)
    FROM dbo.StudentGrades
);


SELECT
    StudentID,
    MIN(Grade) AS LowestGrade
FROM dbo.StudentGrades
GROUP BY StudentID
HAVING MIN(Grade) > 70;


SELECT
    StudentID,
    MIN(Grade) AS LowestGrade
FROM dbo.StudentGrades
GROUP BY StudentID
HAVING MIN(Grade) > 70;

