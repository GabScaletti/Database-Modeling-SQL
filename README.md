# Database-Modeling-SQL


PT_BR
Este repositório foi criado no intuito de armazenar todo o meu projeto de portfólio proposto pela faculdade de tecnologia UniFECAF. Documentarei desde o levantamento de requisitos até o desenvolvimento do banco de dados.

EN
This repository was created with the intetion of storing my entire portfolio project proposed by the UniFECAF technology faculty. I'll document everything from requirements gathering to database development.

# Levantamento de Requisitos
Requirements Gathering


PT_BR
1. Quais são as principais necessidades do cliente?
R: Um banco de dados que armazene todos os dados necessários, permitindo a realização de atividades básicas como montar turmas e armazenar as notas dos alunos. 

2. Que tipo de informação precisa ser armazenada no sistema?
R: Informações sobre: alunos, cursos, matérias e seus docentes.

3. Quais tabelas e atributos devem ser criados para garantir que todas as informações sejam
 armazenadas corretamente?
R: As seguintes tabelas, seguidas de seus atributos são: alunos (identidade, contatos, endereço), cursos (nome, duração, grade curricular), matérias, atividades (título, descrição, notas), corpo de docentes (identidade, contatos, endereço) e por fim as turmas.

4. Quais são os relacionamentos entre as tabelas do banco de dados?
R: Os alunos pertencem aos cursos que possuem matérias com atividades e exercícios, formando turmas lecionadas pela equipe de docentes.

5. Existe alguma escalabilidade que precisa ser levado em conta?
R: Sim, até o momento os professores não lecionam a matéria de outros docentes, mas caso haja a necessidade de um professor lecionar a mesma matéria que outro, há necessidade de se pensar sobre.

EN
1. What are the client's main needs?  
A: A database that stores all necessary data, allowing basic operations such as organizing classes and storing students' grades.  

2. What type of information needs to be stored in the system?  
A: Information about students, courses, subjects, and their faculty members.  

3. Which tables and attributes should be created to ensure that all information is stored correctly?  
A: The following tables, followed by their attributes, are: students (identity, contact details, address), courses (name, duration, curriculum), subjects, activities (title, description, grades), faculty members (identity, contact details, address), and finally, classes.  

4. What are the relationships between the database tables?
A: Students belong to courses that contain subjects with activities and exercises, forming classes taught by the faculty team.  

5. Is there any scalability that needs to be considered?  
A: Yes, at the moment, professors do not teach subjects assigned to other faculty members. However, if there is a future need for multiple professors to teach the same subject, this should be taken into account.

# Modelo Entidade Relacionamento (modelo conceitual)
Entity Relantionship Model

![modelo_conceitual_imagem](https://github.com/user-attachments/assets/3acc05ac-f020-48b9-ba7a-aa8fec8d3c23)

# Diagrama Entidade Relacionamento
Entity Diagram Model

![modelo_logico_imagem](https://github.com/user-attachments/assets/bf037910-db70-4269-be93-807a7adec1b8)
