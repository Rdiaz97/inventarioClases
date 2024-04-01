<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Asistencia</title>
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
    $_SESSION['cedula'];
    $materia=$_GET["select"]?? null;
    $cedu=$_SESSION["cedula"];
    if($cedu== null || $cedu== ''){
        header('location:index.php');
        die();
    }
    //query materia
    $sql_materia="SELECT nombre FROM materia where codigo = '$materia'";
    $result_materia=mysqli_query($conexion,$sql_materia);
    $materia_viendo=mysqli_fetch_assoc($result_materia);
    //query profesor
    $sql_sesion="SELECT nombre FROM profesores where cedula = $cedu";
    $result=mysqli_query($conexion,$sql_sesion);
    $row=mysqli_fetch_assoc($result);
    //query estudiante
    $sql_sesion_E="SELECT nombre_estudiante FROM estudiantes where cedula = $cedu";
    $result_E=mysqli_query($conexion,$sql_sesion_E);
    $row_e=mysqli_fetch_assoc($result_E);

    if(isset($row) && isset($materia_viendo)){ // si se conecta un profesor

        ?><h1><?php echo "Profesor ".$row["nombre"]." hoy veremos la materia: ".$materia_viendo["nombre"];
        ?></h1> 
        <?php

        date_default_timezone_set('America/Caracas');
        $script_tz = date_default_timezone_get();
        $username = $cedu; // Obtener el nombre de usuario del formulario
        $ip_address = $_SERVER['REMOTE_ADDR']; // Obtener la dirección IP del cliente
        $timestamp = date('Y-m-d H:i:s'); // Obtener la fecha y hora actuales
        // Query para insertar el registro de inicio de sesión en la base de datos
        $query = "INSERT INTO tabla_asistencia_profesores (usuario, fecha_hora, direccion_ip, materia) VALUES ('$username', '$timestamp', '$ip_address', '$materia')";
        $resultado_query=mysqli_query($conexion,$query);
?>
<!-- cuando ingresen los profesores den la clase y lo que escriban se envie a una base de datos -->
    <form action="envias_clases.php" method="get" id="form_pizarra">

        <input name="cedula" type="text" value="<?php echo $cedu ?>" style="display:none">
        
        <input name="fecha" type="text" value="<?php echo  $timestamp?>" style="display:none">
        
        <input name="materias" type="text" value="<?php echo  $materia?>" style="display:none">

        <div>
            <textarea name="pizarra" id="pizarra" cols="30" rows="10"></textarea>
         </div>

        <input type="submit" value="Enviar">
        <a href="profesores_C_A_I.php"><input type="button" value="Atras"></a>
    </form>
<?php
    }else if(isset($row_e)){//Si se conecta un estudiante
        ?><h1><?php echo $row_e["nombre_estudiante"]." estamos viendo la materia: ".$materia_viendo["nombre"];
        ?></h1><?php
    ?>
        <button id="btnclase" type="button">Ver clase de hoy</button>
        <a href="alumnos_C_I.php"><button> Atras </button></a>

        <?php
            date_default_timezone_set('America/Caracas');
            $script_tz = date_default_timezone_get();
            $username = $cedu; // Obtener el nombre de usuario del formulario
            $ip_address = $_SERVER['REMOTE_ADDR']; // Obtener la dirección IP del cliente
            $timestamp = date('Y-m-d H:i:s');
            // Query para insertar el registro de inicio de sesión en la base de datos
            $query = "INSERT INTO tabla_asistencia_estudiante (usuario, fecha_hora, direccion_ip, materia) VALUES ('$username', '$timestamp', '$ip_address', '$materia')";
            $resultado_query=mysqli_query($conexion,$query);
        ?>
        <br><br>
        <div id="clase_hoy" style="display:none">
        <h2>clase de hoy</h2>
        <?php
            $sql_marcar_hoy="SELECT pizarra FROM pizarra where materia='$materia' OR fecha='$timestamp'";
            $resulta_marcar_hoy=mysqli_query($conexion,$sql_marcar_hoy);
            while($marcador_hoy=mysqli_fetch_array($resulta_marcar_hoy)){
                ?>
                <div>
                <?php
                    echo $marcador_hoy['pizarra'];
                ?>
                </div>
                <?php    
                }
                ?>
        </div>
        <?php
            //query para ver la clase
            $sql_marcar="SELECT pizarra FROM pizarra where materia='$materia'";
            $resulta_marcar=mysqli_query($conexion,$sql_marcar);
            while($marcador=mysqli_fetch_array($resulta_marcar)){
                ?>
                <div>
                <?php
                    echo $marcador['pizarra'];
                ?>
                </div>
                <?php    
                }
    }
?> 
<script>
    const btn =document.getElementById("btnclase");
    const pizarraHoy=document.getElementById("clase_hoy");
    btn.addEventListener("click", ()=>{
        pizarraHoy.style="display:block";
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