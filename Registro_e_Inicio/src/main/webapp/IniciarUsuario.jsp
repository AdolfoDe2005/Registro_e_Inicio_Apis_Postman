<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" href="EstilosServlets.css">
</head>
<body>
    <div class="container">
        <h2>Inicio de Sesión</h2>
        <form action="IniciarUsuario" method="post">
            <label for="Nombre">Usuario:</label>
            <input type="text" id="Nombre" name="Nombre" required>
            
            <label for="Clave">Contraseña:</label>
            <input type="password" id="Clave" name="Clave" required>
            
            <button type="submit">Iniciar Sesión</button>
        </form>
        <p>¿No tienes cuenta? <a href="RegistroUsuario">Regístrate aquí</a></p>
    </div>
</body>
</html>
