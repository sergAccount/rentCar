<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="title">
      Данные автомобиля
    </jsp:attribute>
    <jsp:attribute name="stylecss">
        <c:set var="path" value="${pageContext.request.contextPath}" />
        <link href="<c:url value="/resources/css/dashboard.css"/>" rel="stylesheet">
    </jsp:attribute>

    <jsp:attribute name="logaction">
            <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/logout" method="post">
                <button type="submit" class="btn btn-success">Выйти</button>
            </form>
    </jsp:attribute>

    <jsp:body>
        <t:lksidebar/>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Данные автомобиля</h1>
            <c:if test="${not empty msg}">
                <div class="alert alert-${css} alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <strong>${msg}</strong>
                </div>
            </c:if>

            <br />

            <div class="row">
                <label class="col-sm-2">ID</label>
                <div class="col-sm-10">${car.id}</div>
            </div>

            <div class="row">
                <label class="col-sm-2">Марка</label>
                <div class="col-sm-10">${car.carModel.manufacturer}</div>
            </div>

            <div class="row">
                <label class="col-sm-2">Модель</label>
                <div class="col-sm-10">${car.carModel.model}</div>
            </div>

            <div class="row">
                <label class="col-sm-2">Год выпуска</label>
                <div class="col-sm-10">${car.year}</div>
            </div>

            <div class="row">
                <label class="col-sm-2">Мощность</label>
                <div class="col-sm-10">${car.carModel.power}</div>
            </div>

            <div class="row">
                <label class="col-sm-2">Коробка передач</label>
                <div class="col-sm-10">${car.carModel.gear}</div>
            </div>
        </div>
    </jsp:body>
</t:genericpage>