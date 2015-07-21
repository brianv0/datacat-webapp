<%-- 
    Document   : browser.jsp
    Created on : Sep 19, 2012, 1:21:21 PM
    Author     : bvan
--%>
<%@taglib uri="http://srs.slac.stanford.edu/web_datacat" prefix="web_dc" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>  
        <title>Datacat Browser</title>
        <%@ include file="../views/jscontext.jsp" %>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/browser.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/browser.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js" type="text/javascript"></script>
    </head>
    <body>

        <div class="col-xs-12">

            <div class="row">
                <%@ include file="../views/breadcrumb.jsp" %>
            </div>

            <div class="row">

                <div class="col-sm-5 col-md-4 col-lg-4">
                    <%@ include file="../views/containers.jsp" %>
                </div>
                <div class=" col-sm-6 col-md-7 col-lg-8" id="info-views">
                    <c:if test="${target != null}">
                        <c:choose>
                            <c:when test="${target.type.container}" >
                                <%@ include file="../views/container.jsp" %>
                            </c:when>
                            <c:otherwise>
                                <%@ include file="../views/dataset.jsp" %> 
                            </c:otherwise>
                        </c:choose>
                    </c:if>
                </div> <!-- End right side -->
            </div> <!-- end row -->
        </div>
    </body>
</html>