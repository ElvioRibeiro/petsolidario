
Entrega Grupo 48
PROJETO INTEGRADOR: DESENVOLVIMENTO DE SISTEMAS ORIENTADO A DISPOSITIVOS MÓVEIS E BASEADOS NA WEB
Vídeo: https://drive.google.com/file/d/1tzk7NonSci_-4UmHhGcnSZhoWcmu6hvo/view?usp=drive_link

Aplicação web para conectar abrigos de animais a adotantes.
Tecnologias

    Frontend: HTML, Bootstrap 5, JavaScript (Fetch API)
    Backend: PHP 8.1 (PDO)
    Banco de dados: MySQL / MariaDB
    Servidor local: XAMPP

Instalação

    Clone o repositório: git clone https://github.com/`Usuario`/petsolidario.git
    Copie a pasta petsolidario para C:\\xampp\\htdocs\\
    Abra o XAMPP e inicie Apache e MySQL
    No navegador, entre em http://localhost/phpmyadmin
    Crie o banco petsolidario
    Importe o arquivo sql/init.sql

Configuração de conexão

Em backend/db.php, ajuste se necessário: 

    <?php
    $pdo = new PDO(
      'mysql:host=127.0.0.1;dbname=petsolidario;charset=utf8mb4',
      'root',
      ''
    );
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

Uso

    Abra no navegador: http://localhost/petsolidario/frontend/index.html
    Veja a lista de pets
    Clique em “Adotar” em um pet
    Preencha nome e telefone e envie
    Confira o pedido em phpMyAdmin, na tabela pedidos

API

    Listar pets GET /backend/api.php?action=list
    Fazer pedido POST /backend/api.php?action=adotar Corpo JSON: { "id": 1, "nome": "Seu Nome", "telefone": "(11) 99999-9999" }

Equipe

    Elvio Americo Ribeiro
    

