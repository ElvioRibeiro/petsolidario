CREATE TABLE pets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  foto VARCHAR(255)
);
INSERT INTO pets (nome,foto) VALUES
('Rex','/imagens/rex.jpg'),
('Luna','/imagens/luna.jpg');
CREATE TABLE pedidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  pet_id INT,
  nome_solicitante VARCHAR(100),
  telefone VARCHAR(20),
  criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);