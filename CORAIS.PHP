<?php
include_once './includes/conexao.php';
include_once './includes/header.php';
?>
<main>
<?php  

$sql = "SELECT Nome, Tipo, Descricao FROM corais";
$result = $conn->query($sql);

// Verifica se encontrou resultados
if ($result->num_rows > 0) {
    while ($coral = $result->fetch_assoc()) {
        
        $nomeArquivoImagem = strtolower(str_replace(' ', '-', $coral['Nome'])) . ".jpg";

        echo '
        <div class="info1">
            <h2>' . htmlspecialchars($coral['Nome']) . '</h2>
            <p>' . htmlspecialchars($coral['Descricao']) . '</p>
             <p>' . htmlspecialchars($coral['Tipo']) . '</p>
            
            <div class="foto1">
                <img src="./assets/img/cerebro.jpg' . $nomeArquivoImagem . '" alt="Imagem de ' . htmlspecialchars($coral['Nome']) . '">
                <a href="corais.html"></a>
            </div>
        </div>';
    }
} else {
    echo "<p>Nenhum coral encontrado no banco de dados.</p>";
}

$conn->close();
?>
</main>
<?php
include_once './includes/footer.php';
?>
