
CREATE TABLE pets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  foto TEXT
);

INSERT INTO pets (nome, foto) VALUES
  ('Rex', 'imagens/dog.png'),
  ('Fido', 'imagens/dog.png'),
  ('Max', 'imagens/dog.png'),
  ('Lucy', 'imagens/dog.png'),
  ('Milo', 'imagens/dog.png'),
  ('Luna', 'imagens/dog.png');


CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pet_id INT,
  nome_solicitante VARCHAR(100),
  telefone VARCHAR(20),
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);