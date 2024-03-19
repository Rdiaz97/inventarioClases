<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Alumnos</title>
</head>
<body> 
    <nav class="menu">
        <ul>
            <li><img id="logo" src="logo.png" alt=""></li>
            <li id="historia">Breve historia del IUTIRLA
                <div class="nav-historia">
                    <div id="nav-historia-div">
                        <p d="nav-historia-p" style="font-size: 16px;">La historia del IUTIRLA se remonta a su fundación el 15 de octubre de 1970, en honor al destacado dirigente político venezolano Rodolfo Loero Arismendi. Desde sus inicios, se ha destacado por ofrecer programas académicos orientados a la formación técnica e industrial, contribuyendo al desarrollo del país en estas áreas.

                        A lo largo de los años, el IUTIRLA ha mantenido un compromiso con la excelencia académica y la formación integral de sus estudiantes, adaptándose a los cambios tecnológicos y las necesidades del entorno industrial. La institución ha buscado fomentar la investigación, la innovación y el espíritu emprendedor entre su comunidad estudiantil.

                        Además, el IUTIRLA ha establecido alianzas con diferentes instituciones y empresas para enriquecer la formación de sus estudiantes, brindándoles oportunidades de prácticas profesionales y experiencias en el mundo laboral.</p>
                    </div>
                </div>
            </li>
            <li><a href="salir.php"><input type="submit" value="Salir"></a></li>
        </ul>
    </nav>
    <?php
    include 'conexion.php';
    ?>
        <form id="form-consulta">
        <a href="profesores_C_A_I.php"><button type="button">Volver</button></a>    


            <select name="nombre_materia" id="">
        <?php
        $sql_materia= "SELECT * FROM materia";
        $res_materia= mysqli_query($conexion,$sql_materia);
        ?><option selected>Nombre de la materia</option><?php
        while($row_materia=mysqli_fetch_array($res_materia))
            {
            ?>
            <option><?php echo $row_materia["nombre"];?></option>
            <?php
            }
            ?>
        </select>

        <select name="nombre_estudiante" id="">
        <?php
        $sql_estudiante= "SELECT * FROM estudiantes";
        $res_estudiante= mysqli_query($conexion,$sql_estudiante);
        ?>  <option selected>Nombre del estudiante</option><?php
        while($row_estudiante=mysqli_fetch_array($res_estudiante)){
        ?>
            <option><?php echo $row_estudiante["nombre_estudiante"];?></option>
        <?php
        }
        ?>
        </select>
                <input type="submit" value="Consulta">
    </form>
    <?php
    $nombre_estudiante=$_GET["nombre_estudiante"]?? null;
    $nombre_materia=$_GET["nombre_materia"]?? null;

    if(isset($nombre_estudiante)&& isset($nombre_materia)){
        $sql= "SELECT `materia`.`nombre`, `tabla_asistencia_estudiante`.*, `estudiantes`.`nombre_estudiante`
        FROM `materia` 
            LEFT JOIN `tabla_asistencia_estudiante` ON `tabla_asistencia_estudiante`.`materia` = `materia`.`codigo` 
            LEFT JOIN `estudiantes` ON `tabla_asistencia_estudiante`.`usuario` = `estudiantes`.`cedula`
        WHERE `materia`.`nombre` = '$nombre_materia' AND `estudiantes`.`nombre_estudiante` = '$nombre_estudiante';";
        $res=mysqli_query($conexion,$sql);
        if(mysqli_num_rows($res)!= 0){
        while ($filas=mysqli_fetch_array($res))
         {

            ?><div id="section-consulta"><?php
            echo"estudiante: ".$filas["nombre_estudiante"];?><br><?php echo "hora de entrada a la clase: ".$filas["fecha_hora"];?><br><?php echo"materia: ".$filas["nombre"];?><br><br><?php
        }
        }else {
            echo "No hay registros";
        }
        ?></div><?php
    }
    ?>

<script>
    const historia =document.getElementById("historia");
    const div =document.querySelector(".nav-historia");
    const divP=document.getElementById("nav-historia-div");
    historia.addEventListener("click",()=>{
        div.classList.toggle("activas");
        divP.classList.toggle("activas");
    })
</script>
</body>
</html>
