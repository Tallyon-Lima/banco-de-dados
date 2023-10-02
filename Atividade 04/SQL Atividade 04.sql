    DROP DATABASE sprint1;
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
  
         SELECT * FROM Professor JOIN Disciplina ON idProfessor = fkProfessor WHERE Professor.sobrenome = 'Silva'; 
  
         SELECT p.especialidade1  AS Especialidade1, d.nomeDisc AS NomeDisciplina FROM Professor AS p JOIN Disciplina AS d 
     ON  idProfessor = fkProfessor WHERE p.idProfessor = 1 ORDER BY p.especialidade1;  
     /* Exercício 2 */
     CREATE TABLE Curso (
     idCurso int primary key auto_increment, 
     nome varchar (50), 
     sigla varchar(3), 
     coordenador varchar(45)
     );
     
     INSERT INTO Curso VALUES 
     (null, "Análise e Desen. De Sis.", "ADS","Gerson"), 
     (null, "Sistema Da Informação", "SIS", "Alice"), 
     (null, "Ciência Da Computação", "CC0", "Marise");
     
     CREATE TABLE Aluno (
     idAluno int primary key auto_increment, 
     nome varchar (45), 
     cpf char(11), 
     idade Char (2)
     );
     
     INSERT INTO Aluno VALUES 
     (null, "Pedro", "12345678901", "18"),
    (null, "Maria" , "98765432101" , "29" ),
     (null, "Isabella", "68925397392" , "40");
    
        /*d) Crie um campo com a restrição (constraint) de CHECK;*/
    ALTER TABLE Aluno ADD COLUMN fkCurso int;
    ALTER TABLE Aluno ADD CONSTRAINT fkCurso FOREIGN KEY (fkCurso) REFERENCES Curso (idCurso);
    UPDATE Aluno SET fkCurso = 1 WHERE idAluno =1;
    UPDATE Aluno SET fkCurso = 2 WHERE idAluno =2;
    UPDATE Aluno SET fkCurso = 3 WHERE idAluno =3;
    
    SELECT C.nome AS NomeCurso , A.nome AS AlunoNome FROM Aluno AS A JOIN Curso AS C ON idCurso = fkCurso ;
   
    SELECT * FROM Curso JOIN Aluno ON idCurso = fkCurso WHERE Curso.sigla = 'ADS';
     