<%@ page isELIgnored="false" %><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <body>
    <h2>Users List</h2>
    <div align="left">
      <table border="1" cellpadding="5">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Password</th>
           <th>Email</th>
            <th>Sex</th>
             <th>Country</th>
              <th>Edit</th>
               <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${us}">
          <tr>
            <td>
              <c:out value="${user.userId}" />
            </td>
            <td>
              <c:out value="${user.uName}" />
            </td>
            <td>
              <c:out value="${user.uPass}" />
            </td>
            <td>
              <c:out value="${user.uEmail}" />
            </td>
            <td>
              <c:out value="${user.uSex}" />
            </td>
            <td>
              <c:out value="${user.uCountry}" />
            </td>
            <td>
               <a href="${pageContext.request.contextPath }edituser/${user.userId }">Edit</a>
            </td>
            <td>
             <a href="${pageContext.request.contextPath }deleteuser/${user.userId }" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
          </tr>
        </c:forEach>
      </table><p></p><p></p>
      <a href="/adduser">Add New User</a>
    </div>
  </body>
</html> 