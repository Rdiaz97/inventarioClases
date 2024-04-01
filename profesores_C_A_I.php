<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Clases/alumnos/inventario</title>
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
    include "conexion.php";
    session_start();
    error_reporting (0);
    $varsession= $_SESSION['cedula'];
    if($varsession== null || $varsession== ''){
        header('location:index.php');
        die();
    }
    $sql_sesion="SELECT nombre FROM profesores where cedula = $varsession";
    $result=mysqli_query($conexion,$sql_sesion);
    while($row=mysqli_fetch_assoc($result)){
        ?><h1>
        <?php echo "Bienvenido, profesor ".$row["nombre"];?>
        </h1><?php
    }
    $sql="SELECT * FROM materia";
    $res= mysqli_query($conexion,$sql);
?>
    <section>
        <button id="materias">Materia</button>
        <button id="inventarios">Inventario</button>
        <a href="alumnos.php"><button id="consultas">Consultas</button></a>
        <a href="salir.php"><input type="submit" value="Salir"></a>
    </section>
    <form action="asistencia.php" method="get" id="materia" name="formMateria" class="materia">
        <h1>Materias</h1>
        <div id="materia_div"> 
            <select name="select" id="select-js">
            <?php
                while($filas=mysqli_fetch_assoc($res)){
            ?>
                <option value="<?php echo $filas["codigo"] ?>"><?php echo $filas["nombre"] ?></option>
            <?php
                }
            ?>
            </select>
        </div>
        <input type="submit"  value="Enviar" id="enviar-js">

    </form>

    <form action="" method="get" id="inventario" name="formInventario" class="materia">
        <table id="inventario-t">
            <thead>
                <h1>Inventario</h1>
                <tr>
                    <th>MAQUINA</th>
                    <th>NOMBRE</th>
                    <th>CPU</th>
                    <th>RAM</th>
                    <th>TARJETA MADRE</th>
                    <th>DISCO DURO</th>
                    <th>MONITOR</th>
                    <th>TECLADO</th>
                    <th>RATON</th>
                    <th>ESTADO</th>
                    <th>OBSERVACION</th>
                    <th>UBICACION</th>
                </tr>
            </thead>
            <tbody>

                
                <?php
                    $sql_inventario="SELECT * FROM ficha_pc";
                    $result_inven=mysqli_query($conexion,$sql_inventario);
                    while ($filas_inven= mysqli_fetch_assoc($result_inven)) {
                    
                ?>
                <tr>
                    <th><?php echo $filas_inven["maquina"];?></th>
                    <th><?php echo $filas_inven["nombre"];?></th>
                    <th><?php echo $filas_inven["cpu"];?></th>
                    <th><?php echo $filas_inven["ram"];?></th>
                    <th><?php echo $filas_inven["tarjeta madre"];?></th>
                    <th><?php echo $filas_inven["disco duro"];?></th>
                    <th><?php echo $filas_inven["monitor"];?></th>
                    <th><?php echo $filas_inven["teclado"];?></th>
                    <th><?php echo $filas_inven["raton"];?></th>
                    <th><?php echo $filas_inven["condicion del equipo"];?></th>
                    <th><?php echo $filas_inven["observacion"];?></th>
                    <th><?php echo $filas_inven["ubicacion"];?></th>
                </tr>
                <?php }?>
            </tbody>
        </table>
    </form>
<script>
    const botonM = document.getElementById("materias");
    const botonI = document.getElementById("inventarios");
    const materia = document.getElementById("materia");
    const inventario = document.getElementById("inventario");
    botonM.addEventListener("click",function(){
        materia.classList.toggle("activa");
    })
    botonI.addEventListener("click",function(){
        inventario.classList.toggle("activa");
    })
    const historia =document.getElementById("historia");
    const div =document.querySelector(".nav-historia");
    const divP=document.getElementById("nav-historia-div")
    historia.addEventListener("click",()=>{
        div.classList.toggle("activas");
        divP.classList.toggle("activas");
    })
</script>
</body>
</html>