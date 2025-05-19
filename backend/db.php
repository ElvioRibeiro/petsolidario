<?php
try {
    $pdo = new PDO(
      'mysql:host=127.0.0.1;dbname=petsolidario;charset=utf8mb4',
      'root',
      ''
    );
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erro na conexão: " . $e->getMessage());
}