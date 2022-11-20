<%-- 
    Document   : validarClave
    Created on : 19 nov. 2022, 21:17:10
    Author     : kim53
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Conexion.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

    int id_estudiante = (int) (miSessiondelUsuario.getAttribute("id_usuario") == null ? 0 : miSessiondelUsuario.getAttribute("id_usuario"));
    if (id_estudiante < 1) {
        response.sendRedirect("../jsp/Menu.jsp");
    }
    String clave = request.getParameter("code");

    if (clave == null) {
        clave = "0";
    } else {
        if (clave.equals("")) {
            clave = "0";
        }
    }
    if (!clave.equals("0")) {
        BD bd = new BD();
        bd.conectar();
        int num = 0;

        String strQry = "Select * from Clases where clave='" + clave + "'";
        ResultSet DatosClass = bd.consulta(strQry);
        if (DatosClass.next()) {
            int id_clasesita = DatosClass.getInt(1);
            String gradito = DatosClass.getString(3);
            String infoClass = "insert into Usuario_Clase(id_usuario, id_clase)" + "values( '" + id_estudiante +"','" +  id_clasesita + "' )";
            String act = "update Estudiante set grado_usuario ='" + gradito + "'where id_usuario='" + id_estudiante + "'";
            bd.insertar(infoClass);
            bd.insertar(act);
            
            response.sendRedirect("Menu_A.jsp");
            
        } else {

        }
    } else {
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validar</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
