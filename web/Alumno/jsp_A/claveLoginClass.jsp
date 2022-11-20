<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unirse a una clase</title>
        <link rel="stylesheet" href="../../Docente/css_D/newClass.css" ><!--  -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Mulish&display=swap');
        </style>
        <link rel="shorcut icon" href="../../General/img/logos/Newlogo.png">
    </head>
    <body>
        <header>
            <table>
                <tr>
                    <td>
                        <img src="../../General/img/logos/Newlogo.png" alt="logoCS" class="imglogo"/>
                    </td>
                    <td>
                        <a href="../index.html" ><h1>Copernicus System</h1></a>
                    </td>
                </tr>
            </table>
        </header>
        <div class="cuadro4">
            <div class="p2">
                <img src="../../General/img/logos/Newlogo.png" alt="logoCS" id="logoCS"/>Copernicus System
                
            </div>
            <div class="ingresarCode">
                <h1>Código para unirse a una clase en Copernicus System</h1><br>
                <form name="form" action="validarClave.jsp" method="post" > 
                    <div class="section">
                        <div class="form-group">
                            <input  type="text" id="code" name="code" placeholder="Ingrese su correo" style="color:black"/>
                            <label class="form-label">Código de la clase</label>
                        </div>
                        <p><input class="info" type="submit" id="btnLogin" name="btnLogin" value="Unirse a la clase"></p><br>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
