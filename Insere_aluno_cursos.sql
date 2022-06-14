SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]

-- SELECT NEWID() --gera Id 

--  Insere um estudante na tabela de estudante 

INSERT INTO [Student] ([Id],[Name],[Email],[Document],[Phone],[Birthdate],[CreateDate])
VALUES (
    '1924f403-9bfe-4ec5-807f-227a0700470b',
    'Leonardo Enne',
    'fulano_cicrano@gmail.com',
    '456123824',
    '1298633548',
    '1968-02-01', -- Pode ser NULL
    GETDATE()
)

--  Insere um estudante na tabela de curso do estudante (Pode fazer mais de um curso)

INSERT INTO [StudentCourse] ([CourseId],[StudentId],[Progress],[Favorite],[StartDate],[LastUpdateDate])
VALUES(
    '5f5a33f8-4ff3-7e10-cc6e-3fa000000000',
    '1924f403-9bfe-4ec5-807f-227a0700470b',
    50,
    0,
    '2020-05-13 15:56:12',
    GETDATE()
)

--  Insere um estudante na tabela de estudante 

INSERT INTO [Student] ([Id],[Name],[Email],[Document],[Phone],[Birthdate],[CreateDate])
VALUES (
    '57974b2d-66f2-4a85-9c1b-acaff15dd3fe',
    'Fulano Sila',
    'cicranosilva@gmail.com',
    '456145624',
    '1245683548',
    '1988-05-01', -- Pode ser NULL
    GETDATE()
)

--  Insere um estudante na tabela de curso do estudante (Pode fazer mais de um curso)

INSERT INTO [StudentCourse] ([CourseId],[StudentId],[Progress],[Favorite],[StartDate],[LastUpdateDate])
VALUES(
    '5bae4b29-fb6f-c01d-131c-433500000000',
    '57974b2d-66f2-4a85-9c1b-acaff15dd3fe',
    80,
    0,
    '2021-05-13 15:56:12',
    GETDATE()
)

--  Insere um estudante na tabela de curso do estudante (Pode fazer mais de um curso)

INSERT INTO [StudentCourse] ([CourseId],[StudentId],[Progress],[Favorite],[StartDate],[LastUpdateDate])
VALUES(
    '5dd5316e-7c21-3e56-2516-c24900000000',
    '57974b2d-66f2-4a85-9c1b-acaff15dd3fe',
    20,
    0,
    '2022-04-10 15:56:12',
    GETDATE()
)