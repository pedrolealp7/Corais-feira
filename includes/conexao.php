<?php
// dados do servidor de banco de dados
$host = "localhost";
$usuario = "root";
$senha = "";
$banco = "corais";

// objeto que controla a conexao com o banco
$conn = new mysqli($host, $usuario, $senha, $banco);

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

$atualizador = date("YmdHis").rand(0,999999999999999);
?>
