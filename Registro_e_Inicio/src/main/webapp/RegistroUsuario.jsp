<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="EstilosServlets.css">
</head>
<body>
    <div class="container">
        <h2>Registro de Usuario</h2>
        <form action="RegistroUsuario" method="post">
            <label for="Nombre">Nombre:</label>
            <input type="text" id="Nombre" name="Nombre" required>
            
            <label for="Clave">Clave:</label>
            <input type="password" id="Clave" name="Clave" required>
            
            <button type="submit">Registrar</button>
        </form>
        <p><a href="IniciarUsuario">Volver al inicio de sesión</a></p>
    </div>
</body>
</html>
