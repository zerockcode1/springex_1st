<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>Register..</h1>

  <h3>RESULT--- ${todoDTO}</h3>

  <spring:hasBindErrors name="todoDTO">





  <form method="post" action="/todo/register">
      <input type="text" name="title" value="${dto.title}">
      <c:if test="${errors.hasErrors() }">
          <strong>AAAAAAAAA${errors.getFieldError( 'title' ).defaultMessage }</strong>
      </c:if>
      <input type="date" name="dueDate" value="${dto.dueDate}">


      <button type="submit">Sumbit</button>
  </form>

  </spring:hasBindErrors>

</body>
</html>
