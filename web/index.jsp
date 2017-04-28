<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>    
    <body>
        <%-- Codigo para remover la variable login de session --%>
        <c:if test="${param.opcion == 'salir'}" var="res" scope="session">
            <c:remove var="login" scope="session" />
        </c:if>
        
        <c:if test="${not empty param.usuario and not empty param.clave}" var="res" scope="session">
          <%-- ******************************* --%>  
          <%-- Aqui sacar de la BD el registro --%>
          <%-- select * from usuario where usuario = ? and clave= ? etc --%>
          <%-- ******************************* --%>  
          <c:if test="${param.usuario == 'admin' and param.clave == '123'}" >
              <c:set var="login" value="SI" scope="session" />
          </c:if>          
        </c:if> 
        
        <%-- Verifica si login = SI, si es así entonces lo envia admin.jsp --%>
        <c:if test="${sessionScope.login == 'SI'}" var="resul" scope="session">
            <c:redirect url="admin.jsp" />
        </c:if> 
   
        <%-- Verifica si login = SI, si es así entonces lo envia admin.jsp --%>
        <c:if test="${session.login != 'SI'}" var="resul" scope="session">

            <h1>Login</h1>
            <form action="" method="post">
                <table>
                    <tr>
                        <td>Usuario:</td>
                        <td><input type="text" name="usuario" /></td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td><input type="password" name="clave" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Ingresar" /></td>
                    </tr>                    
                </table>
                 <br>
                 <br>
                
            </form>
            <p style="color:#ccc;">Admin / 123</p>
        </c:if>
</body>
</html>
