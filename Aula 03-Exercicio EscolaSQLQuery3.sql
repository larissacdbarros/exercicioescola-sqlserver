use escola;

create table Disciplinas (
	disciplinaID int not null primary key identity (1,1),
	Disciplina varchar (20)
);

insert into Disciplinas (Disciplina)
values	('Matemática'),
		('Hitória'),
		('Geografia'),
		('Física'),
		('Química'),
		('Português');

select * from Disciplinas;

create table Turmas (
	TurmaID int not null primary key identity (1,1),
	Sala int,
	Turno varchar (10),
);

insert into Turmas (Sala, Turno) 
values (601, 'Matutino' ),
		(604, 'Vespertino'),
		(607, 'Notuno');
		

select * from Turmas;

drop table turmas;

create table Alunos(
	AlunoID int not null primary key identity (1,1),
	Aluno varchar (20),
	Turma int foreign key references Turmas(TurmaID),
	Disciplina1 int foreign key references Disciplinas(disciplinaID), 
	Disciplina2 int foreign key references Disciplinas(disciplinaID)
);


insert into Alunos(Aluno, Turma, Disciplina1, Disciplina2)
values ('Larissa', 1, 1 ,6),
		('Matheus',2, 2, 4),
		('Gustavo',3, 3 ,1),
		('Paulo', 1 , 4 ,6),
		('Igor', 2, 5, 4),
		('Laura', 3 , 6,4),
		('Luana', 1 , 6, 3),
		('Jéssica', 2 , 1 ,2),
		('Ana',3 , 2 , 1);
	
select * from Alunos;
 
drop table alunos;

create table Notas (
	NotaID int not null primary key identity(1,1),
	Aluno int foreign key references Alunos(AlunoID),
	DisciplinaID int foreign key references Disciplinas(disciplinaID),
	Nota1Bim decimal(4,2),
	Nota2Bim decimal(4,2),
	Nota3Bim decimal(4,2),
	Nota4Bim decimal(4,2)
);

insert into Notas (Aluno, DisciplinaID, Nota1Bim, Nota2Bim, Nota3Bim, Nota4Bim)
values (1, 1 , 8.8 ,9.2, 5.4, 6.8),
		(1, 6 , 8.8 ,9.2, 5.4, 6.8),
		(2, 2 , 5.5 , 7.8 , 9.4 , 5.6 ),
		(2, 4 , 8.3 , 4.9 , 5.6 , 9.9),
		(3, 3 , 10.0 , 7.9 , 6.8 , 7.5 ),
		(3, 1 ,  3.2,  4.5, 3.9, 6.7 ),
		(4, 4 , 5.9 , 7.9 , 9.9 , 4.5),
		(4, 6 , 6.9 , 7.5 , 4.3, 5.9 ),
		(5, 5 , 10.0 ,10.0 , 9.6 , 5.6 ),
		(5, 4 , 6.5 , 4.5 , 8.6, 7.3),
		(6, 6 , 2.3 , 1.2 , 5.6 , 5.1 ),
		(6, 4 , 7.7 , 6.9 , 5.9, 7.2),
		(7, 6 , 6.5 , 4.5 ,7.6 ,9.3 ),
		(7, 3 , 2.6 , 5.6, 8.6,7.9 ),
		(8, 1 , 5.9 , 8.5, 3.6,7.4 ),
		(8, 2 , 8.5 ,7.5 , 3.0, 6.0 ),
		(9, 2 , 7.6 , 5.4 , 8.2 ,6.8 ),
		(9, 1 , 7.5 , 8.5, 9.6,4.5 );

drop table notas;

select * from Notas;


--FAZER O JOIN AQUI!!!!
select Turmas, Disciplinas, Alunos, 

 