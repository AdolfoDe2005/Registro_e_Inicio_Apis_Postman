<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>�xito</title>
    <link rel="stylesheet" href="Estilos_Mensajes.css">
</head>
<body>
    <div class="mensaje-container exito">
        <h1>�Operaci�n Exitosa!</h1>
        <p><%= request.getAttribute("mensaje") %></p>
        <a href="IniciarUsuario" class="boton">Volver al Inicio de Sesi�n</a>
    </div>
</body>
</html>
