<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alumnos</title>
</head>
<body> veamos
    <?php
        include "conexion.php";

        $sql="SELECT * FROM materias";
        $res= mysqli_query($conexion,$sql);
        while($filas = mysqli_fetch_assoc($res)){
    ?>
    <button><?php echo 'materia: '.$filas['nombre_materia']?></button>

    <div class="trimestre">
        <ol>
        <?php
            $id=$filas['id_materia'];
            $sql1="SELECT `estudiantes`.`nombre`, `idt`.*, `materias`.`nombre_materia`, `trimestre`.`trimestre` FROM `estudiantes` 
            LEFT JOIN `idt` ON `idt`.`id_estudiantes` = `estudiantes`.`id_estudiantes` 
            LEFT JOIN `materias` ON `idt`.`id_materias` = `materias`.`id_materia` 
            LEFT JOIN `trimestre` ON `materias`.`id_trimestre` = `trimestre`.`id_trimestre`
        WHERE `materias`.`id_materia` = $id;";
            $res1= mysqli_query($conexion,$sql1);
            while($filas1 = mysqli_fetch_assoc($res1)){
        ?>
        <li>
        <?php
        echo $filas1['nombre'].' '.$filas1['trimestre'];
        ?>
        </li>
        <?php
            }
        ?>
        </ol>
    </div>

    <?php
        }
    ?>
