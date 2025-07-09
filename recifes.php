<?php
include_once './includes/conexao.php';
include_once './includes/header.php';
?>
<main>
<?php
// Consulta SQL para pegar os recifes
$sql = "SELECT Nome, Descricao, Localizacao FROM recifes";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($recife = $result->fetch_assoc()) {
        
        $nomeImagem = strtolower(str_replace([' ', 'ç', 'ã', 'é', 'ó'], ['-', 'c', 'a', 'e', 'o'], $recife['Nome'])) . ".jpg";

        echo '
        <div class="info1">
            <h2>' . htmlspecialchars($recife['Nome']) . '</h2>
            <p>' . htmlspecialchars($recife['Descricao']) . '.</p>
            <p>' . htmlspecialchars($recife['Localizacao']) . '</p>
            <div class="foto1">
                <img src="./assets/img/' . $nomeImagem . '" alt="Imagem de ' . htmlspecialchars($recife['Nome']) . '">
            </div>
        </div>';
    }
} else {
    echo "<p>Nenhum recife encontrado.</p>";
}
$conn->close();
?>
</main>
<?php
include_once './includes/footer.php';
?>
