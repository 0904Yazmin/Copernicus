<%@page import="Conexion.BD"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idPersona = (int) (miSessiondelUsuario.getAttribute("id_docen") == null ? 0 : miSessiondelUsuario.getAttribute("id_docen"));
    if (idPersona < 1) {
        response.sendRedirect("../jsp/Menu.jsp");
    }
    try {
        String nombre = "";
        String correo = "";

        BD basesita = new BD();
        basesita.conectar();

        String datitos = "Select * from Docente where id_docen = '" + idPersona + "'";
        //String info2 = "Select * from imgUsu where id_usuario = '" + idPersona + "'"; // no hagas caso a esto xd
        ResultSet rsDatosPer = basesita.consulta(datitos);

        while (rsDatosPer.next()) {
            nombre = rsDatosPer.getString(2);


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tu cuenta</title>
        <link rel="stylesheet" href="../../Alumno/css_A/editaDatos.css" >
        <link rel="stylesheet" href="../../Alumno/css_A/menu_A.css" >
        <style>@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap');</style>
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
    </head>
    <body id="principal">
    <center>
        <header>
            <a href="Menu_A.jsp" ><img src="../../General/img/logos/Newlogo.png" alt="logo" class="logo"></a>
            <nav class="nav_A">
                <center>
                    <ul>
                        <li> <a href="ClasesList_D.jsp" class="link" ><img src="../../General/img/Iconos_menu/clases.png" class="imgmenu"> Clases   <img src="../../General/img/Iconos_menu/desplegar.png" style="margin-right: 5px;" class="imgmenu usu"></a>
                            <ul>
                                <li><a href="../html_D/CrearClaseForm.html" class="link" ><img src="../../General/img/Iconos_menu/mas.png" class="imgmenu">Crear clase</a></li>
                            </ul>
                        </li>

                        <li><a href="../Actividades/Temario.jsp" class="link" ><img src="../../General/img/Iconos_menu/lecciones.png" class="imgmenu"> Lecciones <img src="../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu"></a>
                            <ul>
                                <li><a href="../Actividades/Temario.jsp" class="link" ><img src="../../General/img/Iconos_menu/temario.png" class="imgmenu">Temario</a> </li>
                                <li><a href="../Actividades/Basico.jsp" class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu"> Nivel Básico</a></li> 
                                <li><a  href="../Actividades/Intermedio.jsp"  class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu usu">Nivel Intermedio</a></li> <br>
                                <li><a  href="../Actividades/Avanzado.jsp"  class="link" ><img src="../../General/img/Iconos_menu/apuntes.png" class="imgmenu">Nivel Avanzado</a></li>
                                <li><a href="../Actividades/MaterialApoyoA.jsp" class="link" ><img src="../../General/img/Iconos_menu/libros_1.png" class="imgmenu">Material de apoyo</a></li>
                            </ul>
                        </li>
                        <li><a href="../foro_D/foro_D.jsp" class="link" ><img src="../../General/img/Iconos_menu/comentarios.png" class="imgmenu">Foro</a></li>
                        <li><a href="../Actividades/Ejercicios/Ejercicios.jsp" class="link" ><img src="../../General/img/Iconos_menu/ejercicios.png" class="imgmenu"> Ejercicios</a></li>
                        <li><a href="Puntuaciones.jsp" class="link" > <img src="../../General/img/Iconos_menu/puntuaciones.png" class="imgmenu"> Calificaciones</a></li>
                        <li><a href="Modelos3D.jsp" class="link" ><img src="../../General/img/Iconos_menu/coheteM.png" class="imgmenu">Mapas</a></li> 
                        <li class="opciones"><a class="link" ><img src="../../General/img/Iconos_menu/desplegar.png" class="imgmenu usu" style="width: 20px; height: 20px; cursor: pointer; "></a>
                            <ul>
                                <li class="link"><img src="../../General/img/Iconos_menu/correo.png" class="imgmenu"><%=correo%></li>
                                <li><a href="Menu_D.jsp" class="link" ><img src="../../General/img/Iconos_menu/home.png" class="imgmenu">   Inicio</a></li> 
                                <li><a href="Perfil_D.jsp" class="link" ><img src="../../General/img/Iconos_menu/usuario.png" class="imgmenu usu">Perfil</a></li> <br>
                                <li><a href="../../General/cerrarSesion.jsp" class="link" ><img src="../../General/img/Iconos_menu/salir.png" class="imgmenu"> Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </center>
            </nav>
        </header>
    </center>

    <div class="dos">
        <!-- Frames que contienen paginas jsp con los 3 formularios para editar info (foto del usuario, info del usuario y cambio de contraeña)-->

        <div id="cuadro1"><!-- frame con el jsp para cambiar contraseña-->
            <iframe id="FRAME" src="editar/editaPassD.jsp" width="380" height="450" style="border:none; z-index: 100; " scrolling="no" ></iframe>
        </div>

        <div id="cuadro2"> <!-- frame con el formulario para editar info de usuario -->
            <iframe id="FRAME" src="editar/editaInfoD.jsp" width="350" height="450" style="border:none; z-index: 100; " scrolling="no" ></iframe>
        </div>

        <div id="cuadro3"> <!-- frame con formulario para agregar foto de perfil -->
            <iframe id="FRAME" src="editar/editaFotoD.jsp" width="400" height="450" style="border:none; z-index: 100; " scrolling="no" ></iframe>
        </div>

    </div>


    <%            }
            rsDatosPer.close();
            basesita.cierraConexion();

        } catch (Exception ex) {
            out.print(ex.getMessage());
        }


    %>
</body>
</html>