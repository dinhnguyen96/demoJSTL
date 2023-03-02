
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Demo JSTL</title></head>
<body>
<br/>
<%--
   tag core
--%>
<h2>Demo tag core</h2>
<c:set var="sum" value="0"  />
<c:forEach begin="0" end="10" var="i">
    <c:if test="${i % 2 == 0}">
        <c:set var="sum" value="${i + sum}" />
    </c:if>
</c:forEach>
<c:out value="${sum}"/>

<%--
   Formatting and Localization Tags
--%>
<h2>Formatting and Localization Tags</h2>
<c:set var="date" value="<%=new java.util.Date()%>" />
<p>time format default</p>
<p>Current time :  <c:out value="${date}"/></p>
<p>time format After</p>
<fmt:formatDate pattern="dd-MM-yyyy" type="date" value="${date}" />

<c:set var = "balance" value = "12000000" />
<p>Currency in USA :
    <fmt:setLocale value = "en_US"/>
    <fmt:formatNumber value = "${balance}" type = "currency"/>
</p>

<p>Currency in VND :
    <fmt:setLocale value = "vi_VN"/>
    <fmt:formatNumber value = "${balance}" type = "currency"/>
</p>

<h2>JSTL Functions Tags</h2>
<c:set var = "name" value = "Nguyen Dinh Nguyen" />
<p>Length :  <c:out value="${fn:length(name)}"/></p>
<p>Upper Case :  <c:out value="${fn:toUpperCase(name)}"/></p>
<p>Lower Case :  <c:out value="${fn:toLowerCase(name)}"/></p>











</body>
</html>