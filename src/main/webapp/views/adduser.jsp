<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<table >
<form:form  modelAttribute="user"  action="/success" method="POST" >
<h1>Add New User</h1>
<tr>
<td>User ID : </td>
<td><form:input path="userId"/></td>
</tr>
<tr>
<td>Name : </td>
<td><form:input path="uName"/></td>
</tr>
<tr>
<td>Password : </td>
<td><form:password path="uPass"/></td>
<tr>
<td>Email :</td>
<td> <form:input path="uEmail"/></td>
<tr>
<td>Sex : </td>
<td><form:radiobutton path="uSex" value="Male"/>Male
		<form:radiobutton path="uSex" value="Female"/>Female</td>
		</tr>
<tr>
<td>Country :</td>
<td> <form:select path="uCountry">
				<form:option value="India" label="India"/>
				<form:option value="Australia" label="Australia"/>
				<form:option value="Afghanistan" label="Afghanistan"/>
				<form:option value="USA" label="USA"/>
				<form:option value="China" label="China"/>
</form:select>
</td>
<tr>
<td><input type="submit" value="Add User"/></td>
</tr>
</form:form>
</table>
