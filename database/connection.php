<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
  $conn = new PDO("mysql:host=$servername;dbname=btth01_cse485", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}




  $data = $conn->query("select ma_tgia, ten_tgia from tacgia");
  $d = $data->fetchAll(); 
  
?>
<body>
<h2>Danh sách ten tac gia </h2>
<?php foreach ($d as $row) {?>
<p><?php echo $row['ten_tgia']?></p>    
<?php } ?>
</body>