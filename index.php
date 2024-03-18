<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Quien eres?</title>
</head>
<body>
<?php
    include "conexion.php";
?>
    <nav class="menu">
        <ul>
            <li><img id="logo" src="logo.png" alt="">
        <img class="oculto" src="giphy.gif"></li>
            <li id="historia">Breve historia del IUTIRLA
                <div class="nav-historia">
                    <div id="nav-historia-div">
                        <p d="nav-historia-p" style="font-size: 16px;">La historia del IUTIRLA se remonta a su fundación el 15 de octubre de 1970, en honor al destacado dirigente político venezolano Rodolfo Loero Arismendi. Desde sus inicios, se ha destacado por ofrecer programas académicos orientados a la formación técnica e industrial, contribuyendo al desarrollo del país en estas áreas.

                        A lo largo de los años, el IUTIRLA ha mantenido un compromiso con la excelencia académica y la formación integral de sus estudiantes, adaptándose a los cambios tecnológicos y las necesidades del entorno industrial. La institución ha buscado fomentar la investigación, la innovación y el espíritu emprendedor entre su comunidad estudiantil.

                        Además, el IUTIRLA ha establecido alianzas con diferentes instituciones y empresas para enriquecer la formación de sus estudiantes, brindándoles oportunidades de prácticas profesionales y experiencias en el mundo laboral.</p>
                    </div>
                </div>
            </li>
        </ul>
    </nav>

    <h1>Bienvenidos al laboratorio del IUTIRLA</h1>
    
    <section>
        <a href="registro_profesor.php"><button>Profesor</button></a>
        <a href="registro_alumnos.php"><button>Alumnos</button></a>
    </section>
<script>
    const logo =document.getElementById("logo")
    const oculto =document.querySelector(".oculto")
    const historia =document.getElementById("historia");
    const div =document.querySelector(".nav-historia");
    const divP=document.getElementById("nav-historia-div")
    historia.addEventListener("click",()=>{
        div.classList.toggle("activas");
        divP.classList.toggle("activas");
    })
    logo.addEventListener("click",()=>{
        oculto.classList.toggle("activas");
    })

    // Agrega un evento al objeto global window que se ejecutará cuando cambie el tamaño de la ventana
    window.addEventListener("resize", function() {
    // Recarga la página cuando se detecte un cambio en el tamaño de la ventana
    location.reload();
});
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Quien eres?</title>
</head>
<body>
<?php
    include "conexion.php";
?>
    <nav class="menu">
        <ul>
            <li><img id="logo" src="logo.png" alt="">
        <img class="oculto" src="giphy.gif"></li>
            <li id="historia">Breve historia del IUTIRLA
                <div class="nav-historia" id="nav-historia-index">
                    <div id="nav-historia-div">
                        <p d="nav-historia-p" style="font-size: 16px;">La historia del IUTIRLA se remonta a su fundación el 15 de octubre de 1970, en honor al destacado dirigente político venezolano Rodolfo Loero Arismendi. Desde sus inicios, se ha destacado por ofrecer programas académicos orientados a la formación técnica e industrial, contribuyendo al desarrollo del país en estas áreas.

                        A lo largo de los años, el IUTIRLA ha mantenido un compromiso con la excelencia académica y la formación integral de sus estudiantes, adaptándose a los cambios tecnológicos y las necesidades del entorno industrial. La institución ha buscado fomentar la investigación, la innovación y el espíritu emprendedor entre su comunidad estudiantil.

                        Además, el IUTIRLA ha establecido alianzas con diferentes instituciones y empresas para enriquecer la formación de sus estudiantes, brindándoles oportunidades de prácticas profesionales y experiencias en el mundo laboral.</p>
                    </div>
                </div>
            </li>
        </ul>
    </nav>

    <h1>Bienvenidos al laboratorio del IUTIRLA</h1>
    
    <section>
        <a href="registro_profesor.php"><button>Profesor</button></a>
        <a href="registro_alumnos.php"><button>Alumnos</button></a>
    </section>
<script>
    const logo =document.getElementById("logo")
    const oculto =document.querySelector(".oculto")
    const historia =document.getElementById("historia");
    const div =document.querySelector(".nav-historia");
    const divP=document.getElementById("nav-historia-div")
    historia.addEventListener("click",()=>{
        div.classList.toggle("activas");
        divP.classList.toggle("activas");
    })
    logo.addEventListener("click",()=>{
        oculto.classList.toggle("activas");
    })

    // Agrega un evento al objeto global window que se ejecutará cuando cambie el tamaño de la ventana
    window.addEventListener("resize", function() {
    // Recarga la página cuando se detecte un cambio en el tamaño de la ventana
    location.reload();
});
</script>
</body>
</html>