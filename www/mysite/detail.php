<?php
     $db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
   <body>
      <?php
	if (!isset($_GET['juego_id'])) {
	die('No se ha especificado un juego');
	}
	$juego_id = $_GET['juego_id'];
	$query = 'SELECT * FROM tJuegos WHERE id='.$juego_id;
	$result = mysqli_query($db, $query) or die('Query error');
	$only_row = mysqli_fetch_array($result);
	echo '<h1>'.$only_row['nombre'].'</h1>';
	echo '<h2>'.$only_row['año_salida'].'</h2>';
	echo "<img width=50% src='$only_row[url_imagen]'/>";
	echo '<p>'.$only_row['tematica'].'</p>';
      ?>
     <h3>Comentarios:</h3>
     <ul>
	<?php
	  $fecha = date('d-m-Y');
	  $query2 = 'SELECT * FROM tComentarios WHERE juego_id='.$juego_id;
	  $result2 = mysqli_query($db, $query2) or die('Query error');
	while ($row = mysqli_fetch_array($result2)){
		echo '<li>'.$row['comentario'].'>'.$fecha.'</li>';
	} 
	mysqli_close($db);
	?>
     </ul>
     <p>Deja un nuevo comentario:</p>
     <form action="/comment.php" method="post">
	<textarea rows="4" cols="50" name="new_comment"></textarea><br>
	<input type="hidden" name="juego_id" value="<?php echo $juego_id; ?>">
	<input type="submit" value="Comentar">
     </form>
   </body>
</html>
