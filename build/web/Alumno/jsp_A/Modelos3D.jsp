
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Conocenos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Mulish&display=swap');
        </style>
        <link rel="shorcut icon" href="General/img/logos/Newlogo.png">
        <link href="modelos/estilitosMapas.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contenedor_1">
            <div class="navbar">
                <img src="General/img/logos/Newlogo.png" alt="logo" class="logo"/>
                <nav>
                    <ul>
                        <li><a href="">Registro</a> </li>
                        <li><p>Iniciar sesión como:</p></li>
                        <li><a href=""><a href="Login.jsp" class="link" >Estudiante</a></li>
                        <li><a href="Login.jsp" class="link" >Docente</a></li>
                    </ul>
                </nav>
            </div>

            <div class="row">
                <div class="col">
                    <h1>Mapas</h1>
                    <p>Aqui encontraras todos los modelos 3D de los planetas</p>
                    <button type="button">Explorar</button>
                </div>
                <div class="col">
                    <div class="card card1">
                        <a href="">
                            <iframe id="FRAME" src="modelos/SSolar.jsp" width="auto" height="auto" style="border:none; z-index: 100; " scrolling="no" ></iframe>
                        </a>
                    </div>

                    <div class="card card2">
                        <h5>Hola mundo</h5>
                        <p>Yazmin Reyes Barquera</p>
                    </div>


                </div>
            </div>
        </div>
    </body>
</html>
