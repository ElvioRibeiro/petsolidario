<?php
require 'db.php';
header('Content-Type: application/json');

$action = $_GET['action'] ?? '';
if ($action === 'list') {
  $stmt = $pdo->query('SELECT * FROM pets');
  echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
} elseif ($action === 'adotar' && $_SERVER['REQUEST_METHOD']==='POST') {
  $data = json_decode(file_get_contents('php://input'), true);
  $stmt = $pdo->prepare('INSERT INTO pedidos (pet_id,nome_solicitante,telefone) VALUES(?,?,?)');
  $stmt->execute([$data['id'],$data['nome'],$data['telefone']]);
  echo json_encode(['status'=>'ok']);
} else {
  echo json_encode(['error'=>'Ação inválida']);
}