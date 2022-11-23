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
        <link rel="stylesheet" href="../../../../Alumno/css_A/menu_A.css">
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
                                <li><a href="../../Temario.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/temario.png" class="imgmenu">Temario</a> </li>
                                <li><a href="../../Basico.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/apuntes.png" class="imgmenu"> Nivel Básico</a></li> 
                                <li><a href="../../Intermedio.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/apuntes.png" class="imgmenu usu">Nivel Intermedio</a></li> 
                                <li><a href="../../Avanzado.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/apuntes.png" class="imgmenu">Nivel Avanzado</a></li>
                                <li><a href="../../MaterialApoyoA.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/libros_1.png" class="imgmenu">Material de apoyo</a></li>
                            </ul>
                        </li>
                        <li><a href="../../../foro_A/foro_A.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/comentarios.png" class="imgmenu">Chat</a></li>
                        <li><a href="#" class="link" ><img src="../../../../General/img/Iconos_menu/ejercicios.png" class="imgmenu"> Ejercicios</a></li>
                        <li><a href="#" class="link" > <img src="../../../../General/img/Iconos_menu/puntuaciones.png" class="imgmenu"> Puntuaciones</a></li>
                        <li><a href="../../../Modelos3D.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/coheteM.png" class="imgmenu">Mapa</a></li> 
                        <li class="opciones"><a class="link" ><img src="../../../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                            <ul>
                                <li class="link"><img src="../../../../General/img/Iconos_menu/correo.png" class="imgmenu"><%=correo%></li>
                                <li><a href="Menu_A.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/home.png" class="imgmenu">   Inicio</a></li> 
                                <li><a href="Perfil_A.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/usuario.png" class="imgmenu usu">Perfil</a></li> 
                                <li><a href="../../General/cerrarSesion.jsp" class="link" ><img src="../../../../General/img/Iconos_menu/salir.png" class="imgmenu"> Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </center>
            </nav>
        </header>
    </center>
    <div class="title" id="tiitle">
        <h1>Lección 1</h1>
    </div>
    <div class="frame1">
        <iframe src='https://my.spline.design/tierra-8cfeeeb49ed78ab4d314507d78c7754c/' frameborder='0' width='1500' height='770'></iframe>
    </div>

    <nav class="menu">
        <a href="#1" class="link2">Tema 1</a>
        <a href="#2" class="link3">Tema 2</a>
        <a href="#3" class="link4">Tema 3</a>
        <a href="#4" class="link4">Tema 4</a>
        <a href="#5" class="link4">Tema 5</a>
        <span class="indicador" id="indicador"></span>
    </nav>
    <div class="secciones">
        <div class="seccion" id="1">
            <div class="card">
                <h1>Lección 1: <br>¿Que hay mas allá del cielo?</h1>
                <img src="img/1.jpg" alt="">
                <p>¡En esta lección aprenderas a que hay mas allá del cielo y que objetos nos oculta este lugar tan fascinante! </p>     
            </div>
            <br><br><br>
            <div class="card">
                <h1>Tema 1: El espacio Exterior</h1>
                <img src="img/1.jpg" alt="">
                <p>
                    ¿Sabes que hay más allá de donde los pájaros vuelan, o de donde pasan los aviones?, o a lo mejor te has preguntado, 
                    ¿Dónde están las hermosas estrellas o donde esta la brillante luna?, pues la respuesta para estas preguntas esta en 2 simples palabras, 
                    el espacio exterior, así es, el espacio exterior es lo hay mas arriba del cielo azul.<br><br>
                    El espacio exterior es un conjunto de muchos objetos, con distintos tamaños, distinto peso, entre otras cosas, aunque estos tipos de conceptos los veremos después.

                </p>           
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/espacio.jpg" alt="Espacio" class="imagenEspacio"/>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 2: ¿Qué es un Planeta?</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Iniciemos preguntándonos ¿Dónde vivimos?, y claro que no nos referimos a una casa, si no que nos referimos 
                    a nuestro hogar dentro del universo, este es un planeta, un planeta es un objeto astronómico que puede girar
                    alrededor de un cuerpo mas grande, en este caso nuestro hogar que tiene el nombre de “Tierra”, además de que
                    no todos los planetas son iguales, claro que no, estos pueden ser de diferente tamaño, y esto influye en lo
                    que están hechos, por ejemplo:<br><br>

                    Planetas de tamaño pequeño a medio: Están principalmente formados por roca o hielo.<br>
                    Planetas de tamaño grande: Estos tipos de planetas están formados principalmente de gas.<br><br>

                    En nuestro vecindario espacial existen otros planetas que al igual que el nuestro tienen algo en común, 
                    todos giran alrededor de nuestro sol.
                </p>
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/planetas.jpg" alt="Espacio" class="imagenEspacio"/>
            </div>
        </div>

        <div class="seccion" id="3">
            <div class="card">
                <h1>Tema 3: El Sol y las Estrellas</h1>
                <img src="img/3.jpg" alt="">
                <p>
                    En nuestro cielo hay un objeto el cual brilla mucho y además nos proporciona de calor, llamado “El sol”,
                    el cual se trata de un objeto espacial que emite luz propia y calor, este astro es de un tamaño colosal,
                    pero debido a la inmensa distancia que nos separa de el lo vemos de un tamaño pequeño, además de la inmensa
                    distancia, nuestro sol tiene un tamaño colosal, ya que es casi 1,000,000 de veces mas grande que nuestro planeta,
                    ¿es asombroso verdad?.<br><br>

                    Un dato curioso es que el brillo que emite nuestro sol tarda mucho en llegar a nuestro planeta, 
                    exactamente 8 minutos, ¡y eso que la luz que emite viaja a una velocidad de 300,000 km por segundo!
                </p>
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/distancia_sol_tierra.jpg" alt="Distancia" class="imgDistancia"/>
            </div>
            <br>
            <div class="card">
                <img src="img/3.jpg" alt="">
                <p>
                    Siempre nos han mostrado al sol y a las estrellas por separado, pero sabias que, ¡nuestro sol es una estrella!, 
                    si, así como lo ven, la definición de esos tipos de cuerpos se llaman estrellas, sol es el nombre que los astrónomos
                    le dieron a nuestra estrella, además un ultimo dato es que a pesar de que desde nuestro punto de vista, el sol es de
                    color amarillo, la realidad es otra, ya que realmente nuestra estrella es de color blanco, el color amarillo se 
                    provoca por los cristales de hielo que se encuentran en la atmosfera de nuestro planeta y aquellas fotos que vemos
                    comúnmente de nuestra estrella son imágenes retocadas en los telescopios para poder tomar una foto mas detallada de
                    él.
                </p>
            </div>
            <br>
            <div class="card dos">
                <img src="../../../../General/img/img_Lecciones/solblanco.jpg" alt="Planetas" class="imgPlanetas"/>
            </div>

            <div class="seccion" id="4">
                <div class="card">
                    <h1>Tema 4: Asteroides y Cometas</h1>
                    <img src="img/1.jpg" alt="">
                    <p>
                        Dentro de nuestro sistema solar existen más cuerpos además de nuestro sol y los planetas, 
                        entre ellos están los asteroides y cometas, primero iniciaremos con los asteroides, estos cuerpos
                        son principalmente fragmentos de roca u otros materiales como lo pueden ser el níquel y el hierro,
                        estos cuerpos al igual que los planetas, giran alrededor del sol y estos se encuentran en los 
                        cinturones de asteroides, los cuales veremos mas adelante.<br><br>

                        Los asteroides siempre han sido objetos en constante observación ya que estos pueden ser 
                        potencialmente peligrosos para nuestro planeta, ya que algunos pasan extremadamente cerca de 
                        nuestro planeta con la pequeña posibilidad de impactarse contra nuestro planeta.
                    </p>           
                </div>>
                <br>
                <div class="card dos">
                    <img src="../../../../General/img/img_Lecciones/asteroide.jpg" alt="Espacio" class="imagenEspacio"/>
                    <p>Como ejemplo de un asteroide potencialmente peligroso esta el "Asteroide 2022 AE1"</p>
                </div>
                <br>
                <div class="card">
                    <img src="img/1.jpg" alt="">
                    <p>
                        Por otro lado los cometas son cuerpos formados principalmente hechos por hielo, estos cuerpos
                        no se mantienen así todo el tiempo, ya que tienen una orbita alrededor del sol muy particular,
                        esta orbita es de una forma elíptica, pero lo que lo diferencia de otros cuerpos, es que su órbita
                        se aleja y acerca del sol de una manera muy brusca, por ejemplo, en el punto mas lejano del sol,
                        este se congela prácticamente por completo, pero, a medida que se va acercando al sol, el hielo 
                        que lo recubre se empieza a derretir lo cual produce que a su paso deje su característica estela
                        brillante que todos hemos visto en fotos.
                    </p>
                </div>
                <br>
                <div class="card dos">
                    <img src="../../../../General/img/img_Lecciones/cometa_halley.jpg" alt="Planetas" class="imgPlanetas"/>
                    <p>Como ejemplo de un cometa muy famoso esta el "Cometa Halley"</p>
                </div>

            </div>

            <div class="seccion" id="5">
                <div class="card">
                    <h1>Tema 5: ¿Lunas o Satelites?</h1>
                    <img src="img/1.jpg" alt="">
                    <p>
                        Todos conocemos a la luna, si ese cuerpo que aparece por las noches y que tiene un brillo de color
                        blanco, pues bueno, a pesar de lo que comúnmente nos enseñan, no es correcto decirle a esos tipos
                        de cuerpos “Lunas” si no que su nombre correcto serian “Satélites naturales”, luna es el nombre de
                        nuestro satélite natural.<br><br>

                        De todos los planetas solo mercurio y venus no cuentan con algún satélite natural,
                        y los demás planetas si que cuentan con ellos, a continuación, los números:<br><br>

                        Tierra: 1 <br>
                        Marte: 2 <br>
                        Jupiter: 79 <br>
                        Saturno: 82 <br>
                        Urano: 27 <br>
                        Neptuno: 14 <br>
                    </p>           
                </div>>
                <br>
                <div class="card dos">
                    <img src="../../../../General/img/img_Lecciones/Luna.jpg" alt="Espacio" class="imagenEspacio"/>
                </div>

            </div>
            <br> <br> <br>
            <div style="margin-bottom:100px;" class="card final">
                <p>¡Haz completado la lección 1 del nivel Básico!</p>
                <p>Prueba tus conocimientos con este cuestionario</p>

                <center><a style="color:  #140152; font-size: 19px; font-weight: 700;" href="#">Hacer cuestionario 1</a></center>
            </div>
            
            <br> <br> <br>
        </div>

    </div>
    <script src="../lecciones.js" type="text/javascript"></script>
</body>
</html>

