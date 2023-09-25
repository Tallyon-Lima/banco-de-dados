	CREATE DATABASE sprint1;
    USE sprint1;
    
    CREATE TABLE Professor(
    idProfessor int primary key auto_increment,
    nome varchar (50),
    sobrenome varchar(30),
    especialidade1 varchar(40),
    especialidade2 varchar (40)
    );
    
    INSERT INTO Professor VALUES 
    (null, 'João', 'Pedro', 'Contabilidade','Física'),
    (null, 'Henrique', 'Dourado', 'Educação Física','Letras'),
    (null, 'Gustavo','Barreto','Química','Física Quântica'),
    (null, 'Antônio', 'Luís', 'Biologia', 'Geografia'),
    (null, 'Geovanni', 'Silva', 'Contabilidade', 'Educação Física'),
    (null, 'Mário', 'Perreira', 'História','Letra');
    
    CREATE TABLE Disciplina (
    idDisc int primary key auto_increment,
    nomeDisc varchar(45)
    );
    
    INSERT INTO Disciplina VALUES 
    (null, 'Português'),
    (null, 'Física'),
    (null, 'Matemática');
    
    ALTER TABLE Disciplina ADD COLUMN fkProfessor int;
    ALTER TABLE Disciplina ADD CONSTRAINT fkProfessor FOREIGN KEY (fkProfessor) REFERENCES Professor(idProfessor);
    UPDATE Disciplina SET fkProfessor = 3
    WHERE idDisc = 1;
    UPDATE Disciplina SET fkProfessor = 1
    WHERE idDisc = 3;
    UPDATE Disciplina SET fkProfessor = 5
    WHERE idDisc = 2;
    
    SELECT p.nome AS NomeProfessor, d.nomeDisc AS NomeDisciplina FROM Professor AS p JOIN Disciplina as d ON idProfessor = fkProfessor;

	SELECT * FROM Professor JOIN Disciplina ON idProfessor = fkProfessor WHERE professor.sobrenome = 'Silva';
    
	SELECT p.especialidade1  AS Especialidade1, d.nomeDisc AS NomeDisciplina FROM Professor AS p JOIN Disciplina AS d
    ON  idProfessor = fkProfessor WHERE p.idProfessor = 1 ORDER BY p.especialidade1;  