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
        <h1>Lecciones Nivel Basico</h1>
    </div>
    <div class="frame1">
        <iframe src='https://my.spline.design/jupiter-fedd25c71504895492b65cc2f147afff/' frameborder='0' width='1400' height='720'></iframe>
    </div>

    <nav class="menu">
        <a href="#1"class="link2">Tema 1</a>
        <a href="#2"class="link3">Tema 2</a>
        <span class="indicador" id="indicador"></span>
    </nav>
    <div class="secciones">
        <div class="seccion" id="1">
            <div class="card">
                <h1>Lección 3: <br>Los objetos del Sistema Solar</h1>
                <img src="img/1.jpg" alt="">
                <p>
                    ¡En esta lección aprenderas algunos datos y caracteristicas de los objetos mas
                    importantes dentro del Sistema Solar
                </p>     
            </div>
            <br><br><br>
            <div class="card">
                <img src="img/1.jpg" alt="">
                <h1>Tema 1: Mercurio</h1>
                <p>
                    Mercurio es el primer planeta del sistema solar, ademas de que es el planetas mas cercano a el, 
                    aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 4,480 km
                    <br>
                    <br>
                    Distancia con respecto al sol: 57,910,000 km
                    <br>
                    <br>
                    Temperatura máxima, mínima:<br>
                    Máxima: 400°C<br>
                    Mínima: -180°C
                    <br>
                    <br>
                    Tiempo de rotación: 58 días y medio
                    <br>
                    <br>
                    Tiempo de traslación: 88 días
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: Mercurio no cuenta con satélites naturales
                    <br>
                    <br>
                    Atmosfera: Mercurio no cuenta con atmosfera
                    <br>
                    <br>
                    Datos Interesantes: Mercurio tiene una particularidad ya que a pesar de estar muy cerca del sol, 
                    tiene una temperatura muy fría en la noche del planeta y esto es por que permanece un tiempo bastante
                    prolongado dando la misma cara al sol y otra no.
                </p>           
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/mercurio-96d577764c6ee961348505d9725fe33e/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 2: Venus</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Venus es el segundo planeta mas cercano al sol, tiene un tamaño muy superior al de mercurio, aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 12,000 km
                    <br>
                    <br>
                    Distancia con respecto al sol: 108,200,000 km
                    <br>
                    <br>
                    Temperatura: <br>
                    Media: 450°C 
                    <br>
                    <br>
                    Tiempo de rotación: 243 días
                    <br>
                    <br>
                    Tiempo de traslación: 225 días
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: Venus no cuenta con satélites naturales
                    <br>
                    <br>
                    Atmosfera: Nitrógeno y dióxido de carbono
                    <br>
                    <br>
                    Datos Interesantes: A pesar de que mercurio esta mas cerca del sol, venus es el planeta mas caliente del sistema solar,
                    esto debido a su densa atmosfera que provoca un inmenso efecto invernadero, y ademas cuenta con algo poco comun en los planetas del sistema
                    solar, ya que este tiene una rotacion diferente a la de los demas, comunmente la rotcion va en sentido de las manecillas del reloj
                    aunque esto no aplica con Venus que gira en sentido opuesto.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/venus-b994f1f7a898c5d79b925679013578d7/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 3: La Tierra</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    La tierra es el tercer planeta mas cercano al sol, y el unico con agua liquida en su superficie, aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 12,740 km 
                    <br>
                    <br>
                    Distancia con respecto al sol: 149,600,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Tiene una media de 15°C 
                    <br>
                    <br>
                    Tiempo de rotación: 24 horas
                    <br>
                    <br>
                    Tiempo de traslación: 1 año o 365 días
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: La luna
                    <br>
                    <br>
                    Atmosfera: Nitrógeno y Oxigeno
                    <br>
                    <br>
                    Datos Interesantes: Es el único planeta que se encuentra en la zona habitable dentro del sistema solar y en el
                    unico en el que la vida se puede mantener.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/tierra-8f2b3e3816b62876a31cddd804fd136c/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 4: Marte</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    El planeta rojo "Marte" es el cuarto planeta del sistema solar y el ultimo dentro del grupo de los planetas rocosos, aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 6,794 km  
                    <br>
                    <br>
                    Distancia con respecto al sol: 227,940,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Media: -63°C 
                    <br>
                    <br>
                    Tiempo de rotación: 24 horas
                    <br>
                    <br>
                    Tiempo de traslación: 687 días
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: Marte cuenta con 2 satélites Naturales, Phobos y Deimos
                    <br>
                    <br>
                    Atmosfera: Dióxido de carbono y 0,03% de agua
                    <br>
                    <br>
                    Datos Interesantes: Se cree que pudo o puede albergar vida, ya que cuenta en sus polos con lagos de agua congelada,
                    lo cual a dejado a los cientificos asombrados.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/marte-4e2bae6599f65a3a12e1d5976fb7a287/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 5: Jupiter</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Jupiter es el quinto planeta del sistemas solar y es el que nos abre las puertas al mundo de los gigantes gaseosos,
                    aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 142,984 km  
                    <br>
                    <br>
                    Distancia con respecto al sol: 778,833,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Media: -120°C
                    <br>
                    <br>
                    Tiempo de rotación: 10 horas
                    <br>
                    <br>
                    Tiempo de traslación: 12 años
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: <br>
                    Jupiter debido a su inmenso tamaño cuenta con aproximadamente 79 satelites
                    <br>
                    <br>
                    Atmosfera: Hidrogeno, Helio, Metano y Amoniaco
                    <br>
                    <br>
                    Datos Interesantes: Jupiter al tener un tamaño tan grande provoca que tenga una gravedad tan grande que sin estrella
                    seguramente ya no estariamos vivos, esto por que jupiter atrae a los asteroides del cinturon de asteroides que comparte con marte,
                    asi provocando que estos se mantenga en su orbita y no se desvien a la tierra.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/jupiter-50cbcbbf8c523ce1e6e2c447f1cc0ee6/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 6: Saturno</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Saturno es el sexto planeta del sistemas solar y el unico en presentar unos anillos tan visibles,
                    aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 120,536 km 
                    <br>
                    <br>
                    Distancia con respecto al sol: 1,429,400,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Media: -125°C
                    <br>
                    <br>
                    Tiempo de rotación: 10,39 horas
                    <br>
                    <br>
                    Tiempo de traslación: 29,46 años
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: <br>
                    Saturno al ser el segundo planeta mas grande cuenta con aproximadamente 82 satelites
                    <br>
                    <br>
                    Atmosfera: Hidrogeno, Helio y Metano
                    <br>
                    <br>
                    Datos Interesantes: Saturno es el planeta que mas llamo la antención a los astronomos en tiempos pasados debido a sus hermosos anillosm, los cuales
                    estan hechos de rocas de hielo que debido a la gravedad del planeta comenzaron a rotarlo, al numero real de anillos, oscila
                    entre los 500 y 1000, pero debido al color que presentan estos fragmentos se le consideran 7 anillos.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/saturno-8a18df921503a23661d9890f882f5524/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 7: Urano</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Urano es el septimo planeta del sistema solar, y el que toma por primera vez el nombre de "Gigante Gelido", debido
                    a que el calor emitido por el sol casi no llega a el, aqui sus características:
                    <br>
                    <br>
                    Tamaño Diámetro: 51,118 km
                    <br>
                    <br>
                    Distancia con respecto al sol: 2,870,990,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Media: -215°C
                    <br>
                    <br>
                    Tiempo de rotación: 17 horas
                    <br>
                    <br>
                    Tiempo de traslación: 84 años
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: <br>
                    Urano cuenta con 27 satelites orbitandolo
                    <br>
                    <br>
                    Atmosfera: Hidrogeno, metano y otros hidrocaburos
                    <br>
                    <br>
                    Datos Interesantes: Urano es un planeta considero como diferente en el sistema solar ya que, al igual
                    que venus rota en sentido contrario a las manecillas del reloj, pero cuenta con otra anomalia, y es la
                    inclinación de su eje ya que esta casi totalmente horizontal, ademas de que igual cuenta con un conjunto
                    de anillos, aunque estos no son tan grandes como los de saturno.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/urano-38cec35058839349a8bed7b80f4647a8/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 8: Neptuno</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Neptuno es el octavo planeta del sistema solar y el ultimo en considerarse un planeta, aqui sus caracteristicas:
                    <br>
                    <br>
                    Tamaño Diámetro: 49,492 km
                    <br>
                    <br>
                    Distancia con respecto al sol: 4,504,300,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Media: -235°C
                    <br>
                    <br>
                    Tiempo de rotación: 16,11 horas
                    <br>
                    <br>
                    Tiempo de traslación: 164 años
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: <br>
                    Neptuno cuenta con 13 satelites orbitandolo
                    <br>
                    <br>
                    Atmosfera: Hidrogeno, metano y Helio
                    <br>
                    <br>
                    Datos Interesantes: Neptuno que fue descubierto gracias a las matematicas, fue Johann Gottfried Galle
                    quien gracias a un sarie de calculos teorizo de deberia existir un planeta mas allá de Urano debido
                    a ciertas interacciones gravitacionales raras, asi que apuntaron teslescopios hacia el punto en
                    que el teorizo estaba el octavo planeta, y vuala, se descubrio Neptuno.
                </p>
            </div>
            <br>
            <div class="card dos" >
                <div class="frame1">
                    <iframe src='https://my.spline.design/neptuno-20245b0a9f1fc2ecdec4e8473065d92e/' frameborder='0' width='750' height='700'></iframe>
                    <br>
                </div>
            </div>
        </div>

        <div class="seccion" id="2">
            <div class="card">
                <h1>Tema 9: ¿Plutón un Planeta?</h1>
                <img src="img/2.jpg" alt="">
                <p>
                    Mas allá de Neptuno existen una seria de cuerpos llamados "Transneptunianos", este tipos de objetos
                    estan conformados por asteroides, cometas y planetas enanos, dentro de la categoria de planetas enanos
                    se encuentra plutón, aquel planeta que aun en el 2006 era considerado un planeta, dejo de serlo debido 
                    a que se modifico las caracteristicas para que un objeto fuera un planeta y estas son:<br>
                    <br>
                    Girar alrededor del sol<br><br>
                    Tener forma esferica<br><br>
                    Limpiar su orbita<br><br>


                    Pluton no cumple esta ultima norma para ser considerado un planeta junto con los 8 que ya mencionamos,
                    a pesar de eso se le llama el rey del cinturon de Kuiper, y aqui sus caracteristicas:
                    <br>
                    <br>
                    Tamaño Diámetro: 2,376 km
                    <br>
                    <br>
                    Distancia con respecto al sol: 5,900,000,000 km
                    <br>
                    <br>
                    Temperatura:<br>
                    Media: -240°C
                    <br>
                    <br>
                    Tiempo de rotación: 6.3 dias
                    <br>
                    <br>
                    Tiempo de traslación: 247 años
                    <br>
                    <br>
                    Numero de satélites y los más reconocidos: <br>
                    Plutón cuenta con 5 satelites orbitandolo
                    <br>
                    <br>
                    Atmosfera: Nitrógeno, metano y monóxido de carbono
                    <br>
                    <br>
                </p>
            </div>
            <br>
            <div class="card dos">
                <iframe src='https://my.spline.design/pluton-1a6bed467c56b05ad310046373fb7947/' frameborder='0' width='750' height='700'></iframe>
            </div>
            <br>
        </div>

    </div>
    <script src="../lecciones.js" type="text/javascript"></script>
</body>
</html>

