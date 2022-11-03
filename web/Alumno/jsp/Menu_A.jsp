<%@page import="java.sql.ResultSet"%>
<%@page import="ConexionBD.BD"%>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int idPersona = (int) (miSessiondelUsuario.getAttribute("id_alum") == null ? 0 : miSessiondelUsuario.getAttribute("id_alum"));
    if (idPersona < 1) {
        response.sendRedirect("../jsp/Menu_A.jsp");
    }
    String nombre = "";
    BD bd = new BD();
    bd.conectar();
    String strQry = "Select * from Alumno where id_alum= '" + idPersona + "'";
    ResultSet rsDatosPer = bd.consulta(strQry);

    if (rsDatosPer.next()) {
        nombre = rsDatosPer.getString(3);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Copernicus System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Css_A/menu_A.css" ><!--  -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        </style>
        <link rel="shorcut icon" href="../../Imagenes/logos/logo_AN.png">
    </head>
    <body>
    <center>
        <header>
            <img src="../../Imagenes/Iconos_menu/logo_AN.png" class="logo">
            <nav class="nav_A">
                <ul>
                    <img src="../../Imagenes/Iconos_menu/home.png" class="imgmenu"> <a href="#" class="link" >Men� principal</a>
                    <img src="../../Imagenes/Iconos_menu/clases.png" class="imgmenu"> <a href="#" class="link" >Clases</a>
                    <img src="../../Imagenes/Iconos_menu/comentarios.png" class="imgmenu"> <a href="#" class="link" >Foro</a>
                    <img src="../../Imagenes/Iconos_menu/puntuaciones.png" class="imgmenu"> <a href="#" class="link" >Puntuaciones</a>
                    <img src="../../Imagenes/Iconos_menu/ejercicios.png" class="imgmenu"> <a href="#" class="link" >Ejercicios</a>
                    <img src="../../Imagenes/Iconos_menu/mapa.png" class="imgmenu"> <a href="#" class="link" >Mapa interactivo</a>
                    <img src="../../Imagenes/Iconos_menu/apuntes.png" class="imgmenu"> <a href="#" class="link" >Lecciones</a>
                </ul>
            </nav>
             <h1> Bienvenido  <%=nombre%> </h1>
        </header>
    </center>
        
        <div class="tierra">
            <iframe src='https://my.spline.design/tierra-8cfeeeb49ed78ab4d314507d78c7754c/' frameborder='0' width='100%' height='730vh'></iframe>
        </div>
        
    </body>
</html>

