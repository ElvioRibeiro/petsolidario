# Entrega Grupo 48
## PROJETO INTEGRADOR: DESENVOLVIMENTO DE SISTEMAS ORIENTADO A DISPOSITIVOS MÓVEIS E BASEADOS NA WEB

Aplicação web para conectar abrigos de animais a adotantes.

## Tecnologias

- Frontend: HTML, Bootstrap 5, JavaScript (Fetch API)
- Backend: PHP 8.1 (PDO)
- Banco de dados: MySQL / MariaDB
- Servidor local: XAMPP

## Instalação

1. Clone o repositório:
   git clone https://github.com/`Usuario`/petsolidario.git
2. Copie a pasta `petsolidario` para `C:\\xampp\\htdocs\\`
3. Abra o XAMPP e inicie Apache e MySQL
4. No navegador, entre em `http://localhost/phpmyadmin`
5. Crie o banco `petsolidario`
6. Importe o arquivo `sql/init.sql`

## Configuração de conexão

Em `backend/db.php`, ajuste se necessário:
<?php
$pdo = new PDO(
  'mysql:host=127.0.0.1;dbname=petsolidario;charset=utf8mb4',
  'root',
  ''
);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

## Uso

1. Abra no navegador:
   http://localhost/petsolidario/frontend/index.html
2. Veja a lista de pets
3. Clique em “Adotar” em um pet
4. Preencha nome e telefone e envie
5. Confira o pedido em phpMyAdmin, na tabela pedidos

## API

- Listar pets
  GET /backend/api.php?action=list
- Fazer pedido
  POST /backend/api.php?action=adotar
  Corpo JSON:
  {
    "id": 1,
    "nome": "Seu Nome",
    "telefone": "(11) 99999-9999"
  }

## Equipe
