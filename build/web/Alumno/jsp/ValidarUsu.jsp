<%-- 
    Document   : ValidarUsu
    Created on : 2 nov. 2022, 22:50:12
    Author     : kim53
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ConexionBD.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = request.getParameter("email");
    String pass = request.getParameter("password");

    if (usuario == null) {
        usuario = "0";
    } else {
        if (usuario.equals("")) {
            usuario = "0";
        }
    }
    if (pass == null) {
        pass = "0";
    } else {
        if (pass.equals("")) {
            pass = "0";
        }
    }
    if (!usuario.equals("0") && !pass.equals("0")) {
        BD bd = new BD();
        bd.conectar();
        int num = 0;

        //String strQry = "Select * from Alumno where correo_alum='" + usuario + "'and pass_alum = '" + pass + "'";
        String info = null;
        if (info.equals("Select * from Alumno where correo_alum='" + usuario + "'and pass_alum = '" + pass + "'")) {
            num = 1;
        }
        if (info.equals("Select * from Docente where correo_docen='" + usuario + "'and pass_docen = '" + pass + "'")) {
            num = 2;
        }
        if (info.equals("Select * from Independiente where correo_indep='" + usuario + "'and pass_indep = '" + pass + "'")) {
            num = 3;
        }
        ResultSet DatosUsu = bd.consulta(info);
        switch (num) {
            case 1:
                if (DatosUsu.next()) {
                    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
                    int idPersona = DatosUsu.getInt("id_alum");
                    String nombre = DatosUsu.getString("nom_alum");
                    miSessiondelUsuario.setAttribute("id_alum", idPersona);
                    miSessiondelUsuario.setAttribute("Nombre del alumno", nombre);
                    response.sendRedirect("../html_A/Menu_Alumno.html");
                } else {

                }
        }

        //ResultSet rsValidarUsr = bd.consulta(info);
        /**
         * if (rsValidarUsr.next()) { HttpSession miSessiondelUsuario =
         * (HttpSession) request.getSession();
         *
         * int idPersona = rsValidarUsr.getInt("Id_usu"); String nombre =
         * rsValidarUsr.getString("Nom_usu");
         * miSessiondelUsuario.setAttribute("Id_usu", idPersona);
         * miSessiondelUsuario.setAttribute("Nombre de usuario", nombre);
         * response.sendRedirect("../../jsp/Menu.jsp"); } else {
         *
         * } *
         */
    } else {
        response.sendRedirect("../jsp/Sesiones/InicioSesion.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
