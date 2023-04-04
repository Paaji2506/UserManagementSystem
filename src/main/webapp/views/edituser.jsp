<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<table >
<form:form modelAttribute="user" action="/success" method="POST" >
<h1>Edit User Form</h1>
<tr>
<td>User ID : </td>
<td><form:hidden path="userId" value="${us.userId}" /></td>
</tr>
<tr>
<td>Name : </td>
<td><form:input path="uName" value="${us.uName}" /></td>
</tr>
<tr>
<td>Password : </td>
<td><form:password path="uPass"  value="${us.uPass}" /></td>
<tr>
<td>Email :</td>
<td> <form:input path="uEmail"  value="${us.uEmail}" /></td>
<tr>
<td>Sex : </td>
<td><form:radiobutton path="uSex" value="Male" />Male
		<form:radiobutton path="uSex" value="Female"/>Female</td>
		</tr>
<tr>
<td>Country :</td>
<td> <form:select path="uCountry" >
				<form:option value="India" label="India"/>
				<form:option value="Australia" label="Australia"/>
				<form:option value="Afghanistan" label="Afghanistan"/>
				<form:option value="USA" label="USA"/>
				<form:option value="China" label="China"/>
</form:select>
</td>
<tr>
<td><input type="submit" value="Edit User"/></td>
</tr>
</form:form>
</table>
