<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Alumnos</title>
</head>
<body> 
    <?php
    include 'conexion.php';
    ?>
        <form>

            <select name="nombre_estudiante" id="">
        <?php
        $sql_materia= "SELECT * FROM materia";
        $res_materia= mysqli_query($conexion,$sql_materia);
        ?><option selected>Nombre de la materia</option><?php
        while($row_materia=mysqli_fetch_array($res_materia))
            {
            ?>
            <option value="<?php echo$row_materia["codigo"]; ?>"><?php echo $row_materia["nombre"];?></option>
            <?php
            }
            ?>
        </select>

        <select name="nombre_materia" id="">
        <?php
        $sql_estudiante= "SELECT * FROM estudiantes";
        $res_estudiante= mysqli_query($conexion,$sql_estudiante);
        ?>  <option selected>Nombre del estudiante</option><?php
        while($row_estudiante=mysqli_fetch_array($res_estudiante)){
        ?>
            <option value="<?php echo$row_estudiante["cedula"]; ?>"><?php echo $row_estudiante["nombre_estudiante"];?></option>
        <?php
        }
        ?>
        </select>
            <input type="submit" value="Consulta">
    </form>
    <?php
    $nombre_estudiante=$_GET["nombre_estudiante"];
    $nombre_materia=$_GET["nombre_materia"];

    if(isset($nombre_estudiante)&& isset($nombre_materia)){
        $sql= "SELECT `materia`.`nombre`, `tabla_asistencia_estudiante`.*, `estudiantes`.`nombre_estudiante`
        FROM `materia` 
            LEFT JOIN `tabla_asistencia_estudiante` ON `tabla_asistencia_estudiante`.`materia` = `materia`.`codigo` 
            LEFT JOIN `estudiantes` ON `tabla_asistencia_estudiante`.`usuario` = `estudiantes`.`cedula`
        WHERE `materia`.`nombre` = '$nombre_materia' AND `estudiantes`.`nombre_estudiante` = '$nombre_estudiante';";
        $res=mysqli_query($conexion,$sql);
        while ($filas=mysqli_fetch_array($res)) {
            echo"estudiante: ".$filas["nombre_estudiante"]." hora de entrada a la clase: ".$filas["fecha_hora"]." materia: ".$filas["nombre"];
        }
    }
    ?>
</body>
</html>
