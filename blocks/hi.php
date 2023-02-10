<?php
session_start();

?> 
<div class="jumbotron">
  <h1 class="display-4">Привет, <?php echo $_SESSION['user']?>!</h1>
  <?php
    if(isset($_COOKIE["cookPromo"])){
        echo <<<HEREDOCLETTER
        <p class="lead">Для вас действует особенная акция! Она закончится через $endH ч. $endM мин. $endS сек. <br>
        Подробности <a href="promo.php" class="alert-link">здесь</a></p>
        HEREDOCLETTER;
    }
    ?>   
  <hr class="my-4">
  <?php
  
    $birth = include 'birthday.php';
  
  /*if($birthday != time()){
  $birth = <<<HEREDOCLETTER
        <p>До вашего дня рождения $end_date</p>
        HEREDOCLETTER;
        echo $birth;
  } else {
    echo "<p> Поздравляем с Днем рождения!</p>";
        include 'ad.php';
  }*/
  ?>
</div>
