CREATE OR ALTER VIEW vwCourses AS -- ALTER Altera se já existir
    SELECT  -- TOP 10 seleciona o 10 primeiros items
        [Course].[Id], 
        [Course].[Tag], 
        [Course].[Title], 
        [Course].[Url], 
        [Course].[Summary],
        [Course].[CreateDate],
        [Category].[Title] AS [Category], -- "AS" substituí o nome na tabela para "Category"
        [Author].[Name] AS [Author]
    FROM 
        [Course]
        INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id] -- Une a tabelas de "Category" com "Course" pelo "Category" Id 
        INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id] -- Une a tabelas de "Author" com "Course" pelo de "Author" Id
    WHERE [Active] = 1
    -- ORDER BY [CreateDate] DESC

-- Seleciona "Id", "Tag", "Title", "Url" e "Summary" da tabela "Course" que estão ativos
-- Ordena pela "CreateDate" de forma decrescente