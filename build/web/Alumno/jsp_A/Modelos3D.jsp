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
        <title>Mapas interactivos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Mulish&display=swap');
        </style>
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
        <link rel="stylesheet" href="../css_A/menu_A.css" >
        <link href="modelos/estilitosMapas.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contenedor_1" id="p1">
            <center>
                <header>
                    <a href="Menu_A.jsp" ><img src="../../General/img/logos/Newlogo.png" alt="logo" class="logo"></a>
                    <nav class="nav_A">
                        <center>
                            <ul>
                                <li> <a href="Clase_A.jsp" class="link" ><img src="../../General/img/Iconos_menu/clases.png" class="imgmenu"> Clase</a></li>
                                <li><a href="../../General/Actividades/Lecciones/Nivel2/Lecciones.html" class="link" ><img src="../../General/img/Iconos_menu/lecciones.png" class="imgmenu"> Lecciones <img src="../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                                    <ul>
                                        <li><a href="../../Actividades/Temario.jsp" class="link" ><img src="../../General/img/Iconos_menu/temario.png" class="imgmenu">Temario</a> </li>
                                        <li><a href="../Actividades/Basico.jsp" class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu"> Nivel Básico</a></li> 
                                        <li><a  href="../Actividades/Intermedio.jsp"  class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu usu">Nivel Intermedio</a></li> <br>
                                        <li><a  href="../Actividades/Avanzado.jsp"  class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu">Nivel Avanzado</a></li>
                                        <li><a href="../Actividades/MaterialApoyoA.jsp" class="link" ><img src="../../General/img/Iconos_menu/libros_1.png" class="imgmenu">Material de apoyo</a></li>
                                    </ul>
                                </li>
                                <li><a href="../foro_A/foro_A.jsp" class="link" ><img src="../../General/img/Iconos_menu/comentarios.png" class="imgmenu">Foro</a></li>
                                <li><a href="#" class="link" ><img src="../../General/img/Iconos_menu/ejercicios.png" class="imgmenu"> Ejercicios</a></li>
                                <li><a href="#" class="link" > <img src="../../General/img/Iconos_menu/puntuaciones.png" class="imgmenu"> Puntuaciones</a></li>
                                <li><a href="Modelos3D.jsp" class="link" ><img src="../../General/img/Iconos_menu/coheteM.png" class="imgmenu">Mapas</a></li> 
                                <li class="opciones"><a class="link" ><img src="../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                                    <ul>
                                        <li class="link"><img src="../../General/img/Iconos_menu/correo.png" class="imgmenu"><%=correo%></li>
                                        <li><a href="Menu_A.jsp" class="link" ><img src="../../General/img/Iconos_menu/home.png" class="imgmenu">   Inicio</a></li> 
                                        <li><a href="Perfil_A.jsp" class="link" ><img src="../../General/img/Iconos_menu/usuario.png" class="imgmenu usu">Perfil</a></li>
                                        <li><a href="../../General/cerrarSesion.jsp" class="link" ><img src="../../General/img/Iconos_menu/salir.png" class="imgmenu"> Cerrar sesión</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </center>
                    </nav>
                </header>
            </center>

            <div class="row">
                <div class="col" id="col1">
                    <h1>Mapas</h1>
                    <p>  Aqui encontraras todos los modelos 3D que </p>
                    <P> te ayudarán a tu aprendizaje en Copernicus </p><p>System </p>
                    <button type="button"><a href="#p2"> Explorar </a></button>
                </div>

                <div class="col">

                </div>
            </div>
        </div>

        <div class="contenedor_1" id="p2">
            <a name="primero"></a>
            <div class="row">
                <div class="col">

                    <a href="modelos/Mapa.jsp">
                        <div class="card SOLAR_S" id="solar_s">
                            <h5>Ir al Sistema solar</h5>
                        </div>
                    </a>
                    <a href="modelos/Mercurio.jsp">
                        <div class="card card4" >
                            <h5>Mercurio</h5>
                        </div>
                    </a>
                    <a href="modelos/Venus.jsp">
                        <div class="card card3" >
                            <h5>Venus</h5>
                        </div>
                    </a>
                    <a href="modelos/Tierra.jsp">
                        <div class="card card1" >
                            <h5>Tierra</h5>
                        </div>
                    </a>
                    <a href="modelos/Marte.jsp">
                        <div class="card card2" >
                            <h5>Marte</h5>
                        </div>
                    </a>
                    <a href="modelos/Jupiter.jsp">
                        <div class="card card9" >
                            <h5>Jupiter</h5>
                        </div>
                    </a>
                    <a href="modelos/Saturno.jsp">
                        <div class="card card7" >
                            <h5>Saturno</h5>
                        </div>
                    </a>
                    <a href="modelos/Urano.jsp">
                        <div class="card card5" >
                            <h5>Urano</h5>
                        </div>
                    </a>
                    <a href="modelos/Neptuno.jsp">
                        <div class="card card6" >
                            <h5>Neptuno</h5>
                        </div>
                    </a>
                    <a href="modelos/Pluton.jsp">
                        <div class="card card8" >
                            <h5>Plutón</h5>
                        </div>
                    </a>
                   
                </div>    

            </div>
        </div>

    </body>
</html>
