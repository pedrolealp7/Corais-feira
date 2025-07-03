<?php
include_once(__DIR__ . '/includes/conexao.php');
include_once(__DIR__ . '/includes/header.php');

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

                <img src="./assets/img/cerebro.jpg' . $cerebro.jpg . '" alt="Imagem de ' . htmlspecialchars($coral['Nome']) . '">
             
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