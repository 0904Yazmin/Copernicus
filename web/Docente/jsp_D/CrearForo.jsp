<%-- 
    Document   : CrearForo
    Created on : 18 nov. 2022, 00:14:31
    Author     : kim53
--%>

<%@page import="Conexion.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();

            int id = (int) (miSessiondelUsuario.getAttribute("id_docen") == null ? 0 : miSessiondelUsuario.getAttribute("id_docen"));
            BD clasesita = new BD();
            try {
                // Seleccionar el id de esta nueva clase
                String strQry = "Select * from Clases where id_docen ='" + id + "'";
                ResultSet Datito = clasesita.consulta(strQry);
                if (Datito.next()) {
                    HttpSession sesionClase = (HttpSession) request.getSession();
                    int id_class = Datito.getInt(1);
                    sesionClase.setAttribute("id_clase", id_class);

                    String newForo = "insert into Foro(id_clase)" + "values( '" + id_class + "' )";  //Creamos el foro de la clase apartir del id de la clase creada
                    clasesita.insertar(newForo);
                } else {

                }
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }

        %>

    </body>
</html>
