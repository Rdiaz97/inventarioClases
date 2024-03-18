<?php
    include "conexion.php";

    $cedula=$_GET["cedula"];
    $fecha=$_GET["fecha"];
    $materia=$_GET["materias"];
    $pizarra=$_GET["pizarra"];
    if($pizarra != 1){
        $sql_pizarra="INSERT INTO `pizarra` (`id`, `pizarra`, `fecha`, `profesor`, `materia`) VALUES (NULL, '$pizarra', '$fecha', '$cedula','$materia')";
        $result_pizarra=mysqli_query($conexion,$sql_pizarra);
        if (isset($result_pizarra)) {
            header("location:profesores_C_A_I.php");
        }
    }
?>