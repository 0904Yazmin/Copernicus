<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../Css_A/login.css" ><!--  -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Mulish&display=swap');
        </style>
        <link rel="shorcut icon" href="../../Imagenes/logos/Newlogo.png">
    </head>

    <body>
        <header>
            <table>
                <tr>
                    <td>
                        <img src="../../Imagenes/logos/Newlogo.png" alt="logoCS" class="imglogo"/>
                    </td>
                    <td>
                        <a href="../index.html" ><h1>Copernicus System</h1></a>
                    </td>
                </tr>
            </table>
            <nav class="navegacion">
                <a href="#" class="link" >Registro</a>
            </nav>
        </header>

        <div class="cuadro">
            <p><h1>Iniciar Sesión en Copernicus System</h1></p> <br>
        <form name="form" action="ValidarUsu.jsp" method="post" > 
            <center>
                <p><img src="../../Imagenes/Iconos_menu/arroba.png" alt="arroba" class="icons"/><input class="info" type="email" id="TxtCorreo" name="email" placeholder="Ingrese su correo">
                <p><img src="../../Imagenes/Iconos_menu/pass.png" alt="candado" class="icons"/><input class="info" type="password" id="TxtPass" name="password" placeholder="Ingrese su contraseña"></p>
                <p><a href="../jsp/InicioSesion.jsp" class="olvidopass" >¿Olvidaste tu contraseña?</a></p>

                <p><input class="info" type="submit" id="btnLogin" name="btnLogin" value="Iniciar Sesión"></p>
                <p>¿Aún no tienes una cuenta? <a href="../html_A/Registro.html" class="linkRegis">Registrate</a></p>
            </center>
        </form>
    </div>
    <div class="imagenLogin">
        <img src="../../Imagenes/img/img1.png" alt="imagenCohete" class="imgLogin">
    </div>
</body>

<footer>
    <div class="footer1">
        <p>
            Copernicus System
        </p>
    </div>
    <div class="footer2">
        <p>Equipo 6 Tuna tech</p>
        <p>Integrantes</p>
        <p>Aguilera García Christopher Emmanuel
        <p>Cisneros Mendoza Gerardo Uriel</p>
        <p>García López Arturo</p>
        <p> Reyes Barquera Yazmin</p>

    </div>
</footer>
</html>
