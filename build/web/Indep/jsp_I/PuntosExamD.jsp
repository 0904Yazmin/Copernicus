<%@page import="Conexion.Exam"%>
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
            HttpSession miSessiondelUsuario = (HttpSession) request.getSession();
            int id = (int) (miSessiondelUsuario.getAttribute("id_usuario") == null ? 0 : miSessiondelUsuario.getAttribute("id_usuario"));
            Exam examen = new Exam();
            
            
            String aciertos = request.getParameter("aciertos");
            //int aciertos = request.getParameter("aciertos");
            String strQry = null;
            String[] grado = {"Basico", "Intermedio", "Avanzado"};
            examen.getOpcion_elegida();
            examen.corregir();
            examen.getAciertos();

            BD base = new BD();
            try {
                base.conectar();
                if (aciertos.equals("1") ) {
                    strQry = "update Estudiante set grado_usuario='" + grado[0] + "'where id_usuario='" + id + "'";
                } else {
                    if (aciertos.equals("8") || aciertos.equals("9") || aciertos.equals("10") || aciertos.equals("11") || aciertos.equals("12") || aciertos.equals("13") || aciertos.equals("14")) {
                        strQry = "update Estudiante set grado_usuario='" + grado[1] + "'where id_usuario='" + id + "'";
                    } else {
                        strQry = "update Estudiante set grado_usuario='" + grado[2] + "'where id_usuario='" + id + "'";
                    }
                }
                base.insertar(strQry);
                out.print(aciertos);
                
        %>
       
        
        <script>
            window.alert("buenas" + aciertos);
        </script>
        
        <%
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
            //response.sendRedirect("Perfil_I.jsp");

        %>
    </body>
</html>
