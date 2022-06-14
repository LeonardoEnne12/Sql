-- DECLARE @StudentId UNIQUEIDENTIFIER = '1924f403-9bfe-4ec5-807f-227a0700470b' -- Declaração de variável
CREATE OR ALTER PROCEDURE spDeleteStudent (
    @StudentId UNIQUEIDENTIFIER
)AS

BEGIN TRANSACTION

    DELETE FROM 
        [StudentCourse] 
    WHERE [StudentId] = @StudentId

    DELETE FROM 
        [Student]
    WHERE [Id] = @StudentId

COMMIT -- ROLLBACK volta o que foi feito, COMMIT confirma o que foi feito

