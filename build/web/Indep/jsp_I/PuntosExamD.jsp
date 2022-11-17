<%-- 
    Document   : PuntosExamD
    Created on : 16 nov. 2022, 00:23:47
    Author     : kim53
--%>

<%@page import="Conexion.BD"%>
<%@page import="Conexion.Digest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Datos de formulario de registro para Estudiante y docente
            int aciertos = Integer.parseInt(request.getParameter("resultado"));
            String strQry = null;
            String[] grado = {"Basico", "Intermedio", "Avanzado"};
            
            BD base = new BD();
            try {
                base.conectar();
                if (aciertos <= 7) {
                    strQry = "insert into Estudiante(grado_usuario)" + "values( '" + grado[0] +"' )";
                } else {
                    if (aciertos <= 12) {
                        strQry = "insert into Estudiante(grado_usuario)" + "values( '" + grado[1] +"' )";
                    } else {
                        strQry = "insert into Estudiante(grado_usuario)" + "values( '" + grado[2] +"' )";
                    }
                }
                base.insertar(strQry);


            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
            response.sendRedirect("Perfil_I.jsp");

        %>
    </body>
</html>
