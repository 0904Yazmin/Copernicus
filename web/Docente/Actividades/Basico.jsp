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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nivel básico</title>
        <link rel="stylesheet" href="../../Alumno/css_A/menu_A.css" >
        <link rel="stylesheet" href="../../Alumno/Actividades/estilos.css" >
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
    </head>
    <body>
    <center>
        <header>
            <a href="Menu_A.jsp" ><img src="../../General/img/logos/Newlogo.png" alt="logo" class="logo"></a>
            <nav class="nav_A">
                <center>
                    <ul>
                        <li> <a href="#" class="link" ><img src="../../General/img/Iconos_menu/clases.png" class="imgmenu"> Clase</a></li>
                        <li><a href="../../General/Actividades/Lecciones/Nivel2/Lecciones.html" class="link" ><img src="../../General/img/Iconos_menu/lecciones.png" class="imgmenu"> Lecciones <img src="../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                            <ul>
                                <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/temario.png" class="imgmenu">Temario</a> </li>
                                <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu"> Nivel Básico</a></li> 
                                <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu usu">Nivel Intermedio</a></li> <br>
                                <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu">Nivel Avanzado</a></li>
                                <li><a href="MaterialApoyoA.jsp" class="link" ><img src="../../General/img/Iconos_menu/libros_1.png" class="imgmenu">Material de apoyo</a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/comentarios.png" class="imgmenu">Chat</a></li>
                        <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/ejercicios.png" class="imgmenu"> Ejercicios</a></li>
                        <li><a href="#" class="link" > <img src="../../General/img/Iconos_menu/puntuaciones.png" class="imgmenu"> Puntuaciones</a></li>
                        <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/coheteM.png" class="imgmenu">Mapa</a></li> 
                        <li class="opciones"><a class="link" ><img src="../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                            <ul>
                                <li class="link"><img src="../../General/img/Iconos_menu/correo.png" class="imgmenu"><%=correo%></li>
                                <li><a href="Menu_A.jsp" class="link" ><img src="../../General/img/Iconos_menu/home.png" class="imgmenu">   Inicio</a></li> 
                                <li><a href="Perfil_A.jsp" class="link" ><img src="../../General/img/Iconos_menu/usuario.png" class="imgmenu usu">Perfil</a></li> <br>
                                <li><a href="../../General/cerrarSesion.jsp" class="link" ><img src="../../General/img/Iconos_menu/salir.png" class="imgmenu"> Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </center>
            </nav>
        </header>
    </center>

    <div class="contenedor-imagen">
        <img src="../../General/img/img_Lecciones/imgB.jpg" alt=""/>
        <div class="temario">
            <h1>Temario Nivel Básico</h1>
        </div>
    </div>
    <main id="blog">
        <div class="contenedor">
            <aside>
                <nav class="indice">
                    <section>
                        <ul id="menu">       
                            <li><a href="#primero">Lección 1 </a></li>
                            <li><a href="#segundo">Lección 2</a></li>
                            <li><a href="#tercero">Lección 3</a></li>
                            <li><a href="#cuarto">Lección 4</a></li>
                        </ul>
                    </section>
                </nav>
            </aside>
            <a name="primero"></a>
            <div class="contenido">


                <div class="post">
                    <p><h1 class="titulo">Lección 1</h1>
                    <p class="fecha">Conceptos básicos sobre astronomia</p>
                    <ul>
                        <li>Tema 1: El espacio exterior</li>
                        <li>Tema 2: ¿Qué es un planeta?, Nombres de los planetas</li>
                        <li>Tema 3: El sol y las estrellas</li>
                        <li>Tema 4: Asteroides y Cometas</li>
                        <li>Tema 5: ¿Lunas o satélites?</li>
                    </ul>
                    <br>
                    <a href="Lecciones/Nivel_Basico/Leccion1.jsp" id="links">Ir a la lección 1 </a>
                    <a name="segundo"></a>
                </div>


                <div class="post">
                    <h1 class="titulo">Lección 2</h1>
                    <p class="fecha">Conceptos básicos sobre astronomia</p>
                    <ul>
                        <li>Tema 6: ¿Qué es el sistema solar? Y ¿Qué lo conforma?</li>
                        <li>Tema 7: Rotación y Traslación</li>
                    </ul>
                    <br>
                    <a href="Lecciones/Nivel_Basico/Leccion2.jsp" id="links">Ir a la lección 1 </a>
                    <a name="tercero"></a>
                </div>



                <div class="post">
                    <h1 class="titulo">Lección 3</h1>
                    <p class="fecha">Publicado el 4 de Marzo de 2021</p>
                    <ul>
                        <li>Tema 21: Los exoplanetas</li>
                        <li>Tema 22: Las estrellas, enanas blancas y marrones, colores, Supermasivas, y las supernovas</li>
                        <li>Tema 23: Las nebulosas</li>
                        <li>Tema 4: Asteroides y Cometas</li>
                        <li>Tema 24: Las galaxias</li>
                    </ul>
                    <br>
                    <a href="Lecciones/Nivel_Basico/Leccion3.jsp" id="links">Ir a la lección 3 </a>
                </div>

                <a name="cuarto"></a>
                <div class="post">
                    <h1 class="titulo">Lección 4</h1>
                    <p class="fecha">Publicado el 4 de Marzo de 2021</p>
                    <ul>
                        <li>Tema 25: Los agujeros negros</li>
                        <li>Tema 26: Las estrellas de neutrones</li>
                        <li>Tema 27: Los magnetares</li>
                        <li>Tema 28: Los cuásares</li>
                    </ul>
                    <br>
                    <a href="Lecciones/Leccion1.jsp" id="links">Ir a la lección 4</a>
                </div>		
            </div>
        </div>
    </main>


</body>
</html>
