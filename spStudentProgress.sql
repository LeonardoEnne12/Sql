-- EXEC spStudentProgress '57974b2d-66f2-4a85-9c1b-acaff15dd3fe'
CREATE OR ALTER PROCEDURE spStudentProgress (
    @StudentId UNIQUEIDENTIFIER
)
AS
    SELECT 
        [Student].[Name] AS [Name],
        [Course].[Title] AS [Course],
        [StudentCourse].[Progress] AS [Progress],
        [StudentCourse].[LastUpdateDate]
    FROM [StudentCourse]
        INNER JOIN -- A intersecção entre Student, StudentCourse e Course
            [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
        INNER JOIN 
            [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
    WHERE
        [StudentCourse].[StudentId] = @StudentId
        AND [StudentCourse].[Progress] < 100
        AND [StudentCourse].[Progress] > 0
    ORDER BY -- Ordena pela última atualização
        [StudentCourse].[LastUpdateDate] DESC        