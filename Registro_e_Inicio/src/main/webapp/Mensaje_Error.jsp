<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link rel="stylesheet" href="Estilos_Mensajes.css">
</head>
<body>
    <div class="mensaje-container error">
        <h1>¡Ha Ocurrido un Error!</h1>
        <p><%= request.getAttribute("error") %></p>
        <a href="RegistroUsuario" class="boton">Volver al Registro</a>
        <a href="IniciarUsuario" class="boton">Volver al Inicio de Sesión</a>
    </div>
</body>
</html>
