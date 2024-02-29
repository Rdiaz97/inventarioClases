<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro alumnos</title>
</head>
<body>
    <?php
    include "conexion.php";
    ?>
    <form action="alumnos.php" method="get">

        <label for="name">Nombre</label>
        <input type="text" id="name">

        <label for="cedula">Cedula</label>
        <input type="text" id="cedula">

        <label for="telefono">Teléfono</label>
        <input type="text" id="telefono">

        <label for="mail">Correo</label>
        <input type="text" id="mail">


        <select>
            <option value=""></option>
        </select>

        <select>
            <option value=""></option>
        </select>

        <select>
            <option value=""></option>
        </select>

        <select>
            <option value=""></option>
        </select>

        <select>
            <option value=""></option>
        </select>

        <select>
            <option value=""></option>
        </select>
        
        <select>
            <option value=""></option>
        </select>

        <select>
            <option value=""></option>
        </select>

        <input type="submit" value="Enviar">
    </form>    
</body>
</html>
