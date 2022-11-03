<%-- 
    Document   : Info
    Created on : 1 nov. 2022, 22:32:15
    Author     : kim53
--%>

<%@page import="ConexionBD.BD"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyInfo</title>
        <link rel="stylesheet" href="../Css_A/login.css" ><!--  -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Mulish&display=swap');
        </style>
        <link rel="shorcut icon" href="../../Imagenes/logos/logo_AN.png">
    </head>

    <%
        //Datos de formulario de registro
        String usuario = request.getParameter("TxtUsu");
        String correo = request.getParameter("TxtMail");
        String pswd = request.getParameter("TxtPass");
        String tipoUsu = request.getParameter("SelectUsu");

        //Datos del formulario para crear clase
        String nom_clase = request.getParameter("TxtClase");
        String gradoClase = request.getParameter("SelectGrado");

        if (!usuario.equals("") && !correo.equals("") && !pswd.equals("") && !tipoUsu.equals("")) {
            BD base = new BD();
            switch (tipoUsu) {
                case "Alumno":
                    try {
                    base.conectar();
                    String strQry = "insert into Alumno(nom_alum, pass_alum, correo_alum)" + "values( '" + usuario + "','" + pswd + "','" + correo + "'  )";
                    //out.print(strQry);
                    int resultadoInsert = base.insertar(strQry);
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
                response.sendRedirect("Login.jsp"); // Redireccionar a la pagina para tener el codigo QR
                break;

                case "Docente":
                    try {
                    base.conectar();
                    String strQry = "insert into Docente(nom_docen, pass_docen, correo_docen)" + "values( '" + usuario + "','" + pswd + "','" + correo + "'  )";
                    int resultadoInsert = base.insertar(strQry);
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
                response.sendRedirect("Login.jsp"); // Redireccionar al formulario para crear una clase
                break;

                case "Indep":
                    try {
                    base.conectar();
                    String strQry = "insert into Independiente(nom_indep, pass_indep, correo_indep)" + "values( '" + usuario + "','" + pswd + "','" + correo + "'  )";
                    int resultadoInsert = base.insertar(strQry);
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
                response.sendRedirect("Login.jsp"); // Redireccionar a la pagina para tener el codigo QR
                break;
            }
        }
        /**
        if(!nom_clase.equals("") && !gradoClase.equals("")){
            BD basesita = new BD();
            try {
                    basesita.conectar();
                    String strQry = "insert into Clases(nom_clase, grado)" + "values( '" + nom_clase + "','" + gradoClase + "'  )";
                    //out.print(strQry);
                    int resultadoInsert = basesita.insertar(strQry);
                } catch (Exception ex) {
                    out.print(ex.getMessage());
                }
                response.sendRedirect("../CodigoQR.html"); // Redireccionar a la pagina para tener el codigo QR
        }  **/


    %>

    <script src="">

    </script>

    <body>
        <h1> </h1>
    </body>
</html>
