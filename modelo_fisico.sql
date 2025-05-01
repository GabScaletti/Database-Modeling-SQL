create database db_sistema_faculdade;
use db_sistema_faculdade;

#Tabela referente as matérias presentes nas grades curriculares dos cursos
create table tbl_materias(
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    carga_horaria int not null,
    descricao varchar(100),
    
    unique index(id)
);

#Tabela referente aos cadastros dos professores
create table tbl_professores(
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    cpf varchar(11) not null,
    telefone varchar(11) not null,
    email varchar(45) not null,
    
    unique index(id)
);

#Tabela referente as turmas que serão formadas pelos alunos (curso + ano = exemplo: ADS2025)
create table tbl_turmas(
	id int not null primary key auto_increment,
    curso varchar(45) not null,
    ano int not null,
    
    unique index(id)
);

#Tabela referente aos cadastros dos alunos
create table tbl_alunos(
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    cpf varchar(11) not null,
    telefone varchar(11) not null,
    email varchar(45) not null,
    id_turma int not null,
    
    constraint fk_turmas_alunos
    foreign key (id_turma)
    references tbl_turmas(id),
    
    unique index(id)
);

#Tabela referente aos cursos disponibilizados pela faculdade
create table tbl_cursos(
	id int not null primary key auto_increment,
    nome varchar(45) not null,
    carga_horaria int not null,
    descricao varchar(100),
    id_aluno int not null,
    
    constraint fk_alunos_cursos
    foreign key (id_aluno)
    references tbl_alunos(id),
    
    unique index(id)
);

#Tabela referente ao(s) endereço(s) de moradia do aluno
create table tbl_endereco_aluno(
	id int not null primary key auto_increment,
    logradouro varchar(45) not null,
    bairro varchar(45) not null,
    numero int not null,
    id_aluno int not null,
    
    constraint fk_aluno_endereco
    foreign key (id_aluno)
    references tbl_alunos(id),
    
    unique index(id)
);

#Tabela referente ao(s) endereço(s) de moradia do professor
create table tbl_endereco_professor(
	id int not null primary key auto_increment,
    logradouro varchar(45) not null,
    bairro varchar(45) not null,
    numero int not null,
    id_professor int not null,
    
    constraint fk_professor_endereco
    foreign key (id_professor)
    references tbl_professores(id),
    
    unique index(id)
);

#Tabela de relação entre os cursos e as matérias presentes
create table tbl_cursos_materias(
	id int not null primary key auto_increment,
    id_curso int not null,
    id_materia int not null,
    
    constraint fk_curso_cursos_materias
    foreign key (id_curso)
    references tbl_cursos(id),
    
    constraint fk_materia_cursos_materias
    foreign key (id_materia)
    references tbl_materias(id),
    
    unique index(id)
);

#Tabela de relação entre as matérias e os professores que as lecionam
create table tbl_materias_professores(
	id int not null primary key auto_increment,
    id_materia int not null,
    id_professor int not null,
    
    constraint fk_materia_materias_professores
    foreign key (id_materia)
    references tbl_materias(id),
    
    constraint fk_professor_materias_professores
    foreign key (id_professor)
    references tbl_professores(id),
    
    unique index(id)
);

#Tabela referente as atividades aplicadas durante o curso
create table tbl_atividades(
	id int not null primary key auto_increment,
    titulo varchar(45) not null,
    descricao varchar(100),
    nota decimal,
    id_materia int not null,
    
    constraint fk_materias_atividades
    foreign key (id_materia)
    references tbl_materias(id),
    
    unique index(id)
);

#Tabela de relação entre as atividades e os alunos que as realizaram
create table tbl_atividades_alunos(
	id int not null primary key auto_increment,
    id_atividade int not null,
    id_aluno int not null,
    
    constraint fk_atividade_atividades_alunos
    foreign key (id_atividade)
    references tbl_atividades(id),
    
    constraint fk_aluno_atividades_alunos
    foreign key (id_aluno)
    references tbl_alunos(id),
    
    unique index(id)
);