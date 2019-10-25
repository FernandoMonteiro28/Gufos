USE Gufos;

INSERT INTO Tipo_usuario	(Titulo)
VALUES						('Administrador'),
							('Aluno')

INSERT INTO Usuario			(Nome, Email, Senha, Tipo_usuario_id)
VALUES						('Administrador', 'adm@gmail.com', '132', 1),
							('Ariel', 'ariel@gmail.com', '132', 2)

INSERT INTO Localizacao		(CNPJ, Razao_social, Endereco)
VALUES						('12345678910123', 'Escola Senai de Informatica', 'Al. Barao de LImeira, 530')

INSERT INTO Categoria		(Titulo)
VALUES						('Desenvolvimento'),
							('HTML + CSS'),
							('Marketing')

INSERT INTO Evento			(Titulo, Categoria_id, Acesso_livre, Data_evento, Localizacao_id)
VALUES						('C#', 2, 0, '2018-08-07T18:00:00', 1),
							('Estrutura Semantica', 2, 1, GETDATE(), 1)

							 
INSERT INTO Presenca		(Evento_id, Usuario_id, Presenca_status)
VALUES						(1, 6, 'Aguardando'),
							(1, 7, 'Confirmado')

							