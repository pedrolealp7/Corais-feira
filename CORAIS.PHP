<?php
include_once './includes/conexao.php';
include_once './includes/header.php';
?>
  <main>
    <div class="info1">
      <h2>Coral-Cérebro</h2>
      <p>Esse coral tem um padrão que lembra um cérebro humano e é encontrado no Caribe.</p>
      <div class="foto1">
        <img src="./assets/img/cerebro.jpg" alt="">
        <a href="corais.html"> </a>
        
      </div>
    </div>
   <?php  $sql = "SELECT Nome, Tipo, Descricao FROM corais";
$result = $conn->query($sql);
?>
    <div class="info1">
        <h2>Coral-couve-flor</h2>
        <p>O maior recife de coral vivo do mundo é a Grande Barreira de Corais na Austrália, que pode ser vista do espaço. </p>
        <div class="foto1">
          <img src="" alt="Imagem de um coral bonito"> 
        </div>
      </div>

      <div class="info1">
        <h2>Coral- Fungo </h2>
        <p>O maior recife de coral vivo do mundo é a Grande Barreira de Corais na Austrália, que pode ser vista do espaço. </p>
        <div class="foto1">
          <img src="https://www.marinelifephotography.com/corals/mushroom/fungia-scutaria-5.jpg" alt="Imagem de um coral bonito"> 
        </div>
      </div>

      <div class="info1">
      <h2>Coral-Arame</h2>
      <p>Esse coral tem um padrão que lembra um cérebro humano e é encontrado no Caribe.</p>
      <div class="foto1">
        <img src="https://media.gettyimages.com/id/1158815009/pt/foto/whip-coral-ellisella-ceratophyta-interesting-ocean-floor-misool-east-indonesia.jpg?s=170667a&w=gi&k=20&c=BefepRcSYgsXCtlhl4_xYQYtBO8sQYN3SU6TdcdCrjA=" alt="">
        <a href="corais.html"> </a>
        
      </div>
    </div>

    <div class="info1">
      <h2>Coral-Ancora</h2>
      <p>Esse coral tem um padrão que lembra um cérebro humano e é encontrado no Caribe.</p>
      <div class="foto1">
        <img src="https://media.istockphoto.com/id/1207374342/pt/foto/euphyllia-ancora-sp-euphyllia-hammer-lps-coral.jpg?s=612x612&w=0&k=20&c=DnCiQfCiYEm6we5zRW-vszlVguuVL4rRZnXYACRJLWE=" alt="">
        <a href="corais.html"> </a>
      
      </div>
    </div>
  </main>
<?php
include_once './includes/footer.php';
?>