<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="title">
      Краткосрочная аренда автомобилей в Иннополисе
        <c:set var="context" value="${pageContext.request.contextPath}"/>
        <c:set var="sessionKey" value="${sessionScope.userEmail}"/>
    </jsp:attribute>
    <jsp:attribute name="stylecss">
        <c:if test="${sessionKey != null}">
            <link href="${context}/css/dashboard.css" rel="stylesheet">
        </c:if>
    </jsp:attribute>

    <jsp:attribute name="logaction">
        <c:choose>
        <c:when test="${sessionKey eq null}">
            <form class="navbar-form navbar-right" action="${context}/signup">
                <button type="submit" class="btn btn-success">Зарегистрироваться</button>
            </form>

            <form class="navbar-form navbar-right" action="${context}/signin">
                <button type="submit" class="btn btn-success">Войти</button>
            </form>
        </c:when>
        <c:otherwise>
            <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/signin" method="post">
                <input type="hidden" name="currentSession" value="delete"/>
                <button type="submit" class="btn btn-success">Выйти</button>
            </form>
        </c:otherwise>
        </c:choose>


    </jsp:attribute>

    <jsp:body>
        <c:choose>
        <c:when test="${sessionKey eq null}">
        <h1>Добро пожаловать!</h1>
        <h2>Авторизируйтесь для работы с системой</h2>
        </c:when>
        <c:otherwise>
                <t:lksidebar/>
        </c:otherwise>
        </c:choose>
    </jsp:body>
</t:genericpage>