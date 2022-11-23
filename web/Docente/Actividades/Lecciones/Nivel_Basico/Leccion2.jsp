<%@page import="java.sql.ResultSet"%>
<%@page import="Conexion.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idPersona = (int) (miSessiondelUsuario.getAttribute("id_usuario") == null ? 0 : miSessiondelUsuario.getAttribute("id_usuario"));
    if (idPersona < 1) {
        response.sendRedirect("../jsp/Menu.jsp");
    }
    String nombre = "";
    String correo = "";
    BD basesita = new BD();
    basesita.conectar();
    String datitos = "Select * from Estudiante where id_usuario = '" + idPersona + "'";
    ResultSet rsDatosPer = basesita.consulta(datitos);
    if (rsDatosPer.next()) {
        nombre = rsDatosPer.getString(2);
        correo = rsDatosPer.getString(3);
    }
%>
<html>
    <head>
        <title>Lecciones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../../General/css/lecciones.css" >
        <link rel="stylesheet" href="../../../../Alumno/css_A/menu_A.css" >
        <link rel="shorcut icon" href="../../../../General/img/logos/Newlogo.png">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
    </head>

    <body>
    <center>
        <header>
            <a href="Menu_A.jsp" ><img src="../../../../General/img/logos/Newlogo.png" alt="logo" class="logo"></a>
            <nav class="nav_A">
                <center>
                    <ul>
                        <li> <a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/clases.png" class="imgmenu"> Clase</a></li>
                        <li><a href="../../General/Actividades/Lecciones/Nivel2/Lecciones.html" class="link" ><img src="../../../../General/img/Iconos_menu/lecciones.png" class="imgmenu"> Lecciones <img src="../../../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                            <ul>
                                <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/temario.png" class="imgmenu">Temario</a> </li>
                                <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/apuntes.png" class="imgmenu"> Nivel Básico</a></li> 
                                <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/apuntes.png" class="imgmenu usu">Nivel Intermedio</a></li> <br>
                                <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/apuntes.png" class="imgmenu">Nivel Avanzado</a></li>
                                <li><a href="MaterialApoyoA.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/libros_1.png" class="imgmenu">Material de apoyo</a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/comentarios.png" class="imgmenu">Chat</a></li>
                        <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/ejercicios.png" class="imgmenu"> Ejercicios</a></li>
                        <li><a href="#" class="link" > <img src="../../../../General/img/Iconos_menu/puntuaciones.png" class="imgmenu"> Puntuaciones</a></li>
                        <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/coheteM.png" class="imgmenu">Mapa</a></li> 
                        <li class="opciones"><a class="link" ><img src="../../../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                            <ul>
                                <li class="link"><img src="../../../../General/img/Iconos_menu/correo.png" class="imgmenu"><%=correo%></li>
                                <li><a href="Menu_A.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/home.png" class="imgmenu">   Inicio</a></li> 
                                <li><a href="Perfil_A.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/usuario.png" class="imgmenu usu">Perfil</a></li> <br>
                                <li><a href="../../General/cerrarSesion.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/salir.png" class="imgmenu"> Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </center>
            </nav>
        </header>
    </center>
    <div class="title" id="tiitle">
        <h1>Lecciones Nivel Basico</h1>
    </div>
    <div class="frame1">
        <iframe src='https://my.spline.design/jupiter-fedd25c71504895492b65cc2f147afff/' frameborder='0' width='1400' height='770'></iframe>
    </div>

    <nav class="menu">
        <a href="#1" class="link2">Tema 1</a>
        <a href="#2" class="link3">Tema 2</a>
        <span class="indicador" id="indicador"></span>
    </nav>
    <div class="secciones">
        <div class="seccion" id="1">
            <div class="card">
                <h1>Lección 2: <br>El sistema solar y como se mueve</h1>
                <img src="img/1.jpg" alt="">
                <p>¡En esta lección aprenderas datos sobre nuestro vecindario en el espacio, ademas de conocer el
                    por que del dia y la noche, ademas del porque ocurren las estaciones del año! </p>     
            </div>
            <br><br><br>
            <div class="card">
                <img src="img/1.jpg" alt="">
                <h1>Tema 1: El Sistema Solar</h1>
                <p>
                    Ahora si por fin, hemos llegado hasta aquí para conocer como se llama el vecindario de nuestro planeta,
                    el lugar donde estamos ubicados, y este lugar es “El sistema solar”, así como su nombre lo dice,
                    el sistema solar es un conjunto de cuerpos celestes que giran alrededor de nuestro sol, así mismo
                    este sistema esta conformado por diferentes tipos de cuerpos celestes y esta organizado por capas o
                    lugares dentro de él.
                </p>           
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/sistema_solar.jpg" alt="Espacio" class="imagenEspacio"/>
            </div>
            <br>
            <div class="card">
                <img src="img/1.jpg" alt="">
                <p>
                    Primero tenemos al mismo sol, el cual es el centro del sistema y en el que todo se basa para tener
                    una referencia, orbitándolo están los planetas: Mercurio, Venus, Tierra, Marte, Júpiter, Saturno,
                    Urano y Neptuno, Después tenemos a los cinturones de asteroides que hasta ahora hemos catalogado 2
                    en nuestro sistema solar, uno es el que se encuentra entre Marte y Júpiter el cual divide de los
                    planetas rocosos o planetas interno a los gigantes gaseosos o planetas externos, el otro cinturón
                    de asteroides se llama ”Kuiper” el cual se encuentra más allá de Neptuno y compartiendo lugar con 
                    Plutón, y por ultimo tenemos a la nube de Oort la cual es el limite del sistemas solar con el espacio
                    interestelar.
                </p>           
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/nube.jpg" alt="Espacio" class="imagenEspacio"/>
                <p>La nube de Oort es el limite del sistema solar</p>
            </div>

        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 2: Rotación y Traslación</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Algunas ves que has preguntado, ¿Qué provoca el día y la noche?, pues esa pregunta se responde
                    con el término “Movimiento de rotación”, este movimiento ocurre cuando por ejemplo nuestro planeta
                    gira alrededor de un eje que no podemos ver, al estar el sol siempre en el mismo sitio, al dar la
                    vuelva ocasiona que un lado del planeta le de la luz y otro este oscura, así dando como resultado
                    el día y la noche, este movimiento dura exactamente 23 horas, 56 minutos y 4 segundos.
                </p>
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/Rotacion.jpg" alt="Espacio" class="imagenEspacio"/>
            </div>
            <br>
            <div class="card">
                <img src="img/2.jpg" alt="">
                <p>
                    Ya que solucionamos el misterio del día y noche, ahora nos haremos esta pregunta, 
                    ¿Por qué decimos que estamos en primavera, verano, otoño e invierno? O ¿Por qué cambia el 
                    clima durante el año?, bueno esto es ocasionado por el otro movimiento de los cuerpos celestes
                    el cual es el “Movimiento de Traslación” el cual es el movimiento que ocurre cuando el cuerpo 
                    le da una vuelta alrededor de un objeto de mayor masa y que lo haga estar fijo en su orbita alrededor
                    de él, en nuestro caso es nuestro sol, así debido a la forma elíptica de la orbita de la tierra, 
                    cuando estamos mas cerca del sol se presentan las estaciones más cálidas(Primavera y Verano), 
                    mientras que al alejarnos de el se presentan las estaciones más frías(Otoño e invierno).
                </p>
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/Traslacion.jpg" alt="Espacio" class="imagenEspacio"/>
            </div>
        </div>

    </div>
    <script src="../lecciones.js" type="text/javascript"></script>
</body>
</html>
