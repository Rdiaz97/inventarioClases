<!DOCTYPE html>
<<<<<<< HEAD
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Registro alumnos</title>
</head>
<body>
<?php
    include "conexion.php";
?>
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
    <h1 id="h1_registro_a">Bienvenido alumno, por favor identifiquese.</h1>
    <section>
        <button id="ingresar">Ingrese</button>
        <button id="registrarse">Registrarse</button>
        <a href="index.php"><button>Regresar</button></a>
    </section>

    <form method="get" id="ingreso" style="display: none">
        <h1>Ingresar</h1>
        <div>
            <label for="cedula">Cedula</label>
            <input type="text" id="cedula" name="cedula">
        </div>
        <input type="submit" name="evento_ingreso" value="Ingresar">

        <input type="submit" name="regresar" value="Regresar">

    </form>

    <form method="get" id="registro" style="display: none">
        <h1>Registrarse</h1>
        <div>
            <label for="name">Nombre</label>
            <input type="text" id="name" name="nombre">
        </div>
        <div>
            <label for="cedulas">Cedula</label>
            <input type="text" id="cedulas" name="cedula">
        </div>
        <div>
            <label for="telefono">Teléfono</label>
            <input type="text" id="telefono" name="celular">
        </div>
        <div>
            <label for="mail">Correo</label>
            <input type="text" id="mail" name="email">
        </div>
    
            <input type="submit" name="evento_nuevo" value="Registrarse">
            <input type="submit" name="evento_ingreso" value="Ingresar">
            <input type="submit" name="regresar" value="Regresar">
        
    </form>

    
    <?php 
    include 'conexion.php';
    $registrar=$_GET["evento_nuevo"]??null;
    $ingresar=$_GET["evento_ingreso"]??null;
    $regresar=$_GET["regresar"]??null;
    $nombre=$_GET["nombre"]??null;
    $cedula=$_GET["cedula"]??null;
    $celular=$_GET["celular"]??null;
    $correo=$_GET["email"]??null;
    if($registrar!=0){
        if($cedula == 1 && $nombre == 1 && $celular == 1 && $correo == 1){
            $sql="INSERT INTO `estudiantes` (`cedula`, `nombre_estudiante`, `celular`, `correo`) VALUES ('$cedula', '$nombre', '$celular', '$correo')";
            $res=mysqli_query($conexion,$sql);
            if($res){  
                echo "registro completado! Ya puedes ingresar";
            }else{
                echo "no se logro";
                }
        }else{
            echo "Te falto llenar algo";
        }    
    } elseif ($ingresar!=null) {
        $sql_cedula="SELECT * FROM estudiantes WHERE cedula = '$cedula'";
        $res_ced=mysqli_query($conexion,$sql_cedula);
        $user= mysqli_fetch_assoc($res_ced); 
        if($user == null){
            echo "No coincide con nadie";
        }else if($cedula === $user["cedula"]){
            if($user["cedula"] !=0){
                $cedulas= $_GET["cedula"]?? NULL;
                session_start();
                $_SESSION['cedula']=$cedulas;  
                header ('location:alumnos_C_I.php');
            }else{
            echo "algo sucedio no hemos podido ingresar, asegura haber puesto bien tu cedula";
        }
        }else {
            echo "Ingresa algo en la cedula";
        }
    }elseif ($regresar!=null) {
        header("location:index.php");
    }
?>
<script>
    const botonI = document.getElementById("ingresar");
    const botonR = document.getElementById("registrarse");
    const registro = document.getElementById("registro");
    const ingreso = document.getElementById("ingreso");
    botonI.addEventListener("click",function(){
        ingreso.style.display = "block";
        registro.style.display = "none";
    })
    botonR.addEventListener("click",function(){
        ingreso.style.display = "none";
        registro.style.display = "block";
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
