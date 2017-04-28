<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- Codigo para verificar si el usuario está autentificado --%>
<%-- Ingresa solo cuando login = SI, en caso contrario lo deriva a index.jsp --%>
<c:if test="${sessionScope.login != 'SI'}" var="resultado" scope="session">
    <jsp:forward page="index.jsp" />
</c:if>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido al panel de administracion</h1>
        <p>Esta pagina se muestra solo si el usuario fue autenticado</p>
        <p></p>
        <p>Para salir pulse <a href="index.jsp?opcion=salir">Aqui</a></p>
    </body>
</html>
