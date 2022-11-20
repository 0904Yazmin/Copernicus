<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../General/css/login.css" ><!--  -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Mulish&display=swap');
        </style>
        <link rel="shorcut icon" href="../General/img/logos/Newlogo.png">
    </head>
    <body>

    </body>

    <body>
        <header>
            <table>
                <tr>
                    <td>
                        <img src="../General/img/logos/Newlogo.png" alt="logoCS" class="imglogo"/>
                    </td>
                    <td>
                        <a href="../index.html" ><h1>Copernicus System</h1></a>
                    </td>
                </tr>
            </table>
            <nav class="navegacion">
                <a href="Registro.html" class="link" >Registro</a>
                <a href="LoginDocente.jsp" class="link" >Iniciar sesión como docente</a>
            </nav>
        </header>

        <div class="cuadro">
            <center>
                <p><h1>Iniciar Sesión como Estudiante</h1> <br>
                <form name="form" action="ValidarEstudiante.jsp" method="post" > 
                    <div class="section">
                        <div class="form-group">
                            <p><img src="img/Iconos_menu/arroba.png" alt="arroba" class="icons"/>
                                <input  type="email" id="TxtCorreo" name="email" placeholder="Ingrese su correo"/>
                                <label class="form-label">Correo electrónico</label></p>
                        </div>
                        <div class="form-group">
                            <p><img src="img/Iconos_menu/pass.png" alt="candado" class="icons"/>
                                <input type="password" id="TxtPass" name="password" placeholder="Ingrese su contraseña"/>
                                <label class="form-label">Contraseña</label></p>
                        </div>

                        <label class="form-label"><p><a href="olvidoPass.html" class="linkRegis olvidopass" >¿Olvidaste tu contraseña?</a></p></label>
                        <br > 

                        <p><input class="info" type="submit" id="btnLogin" name="btnLogin" value="Iniciar Sesión"></p><br>
                        <p>¿Aún no tienes una cuenta? <a href="Registro.html" class="linkRegis">Registrate</a></p>
                    </div>
                </form>
            </center>
        </div>

        <div class="tierra">
            <iframe src='https://my.spline.design/tierracopy-75bc5b92c6c686be9d4697874f43f6f1/' frameborder='0' width='1500' height='1000'></iframe>
        </div>

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
    </body>
</html>
