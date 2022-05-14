<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de Usuário</title>
</head>
<body>

	<%@page import="com.crudjspjava.bean.Usuario, com.crudjspjava.dao.UsuarioDao" %>

	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>
	
	<h1>Edição do Usuário</h1>
	
	<form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Sexo: </td>
				<td><input type="radio" name="sexo" value="masculino"/> Masculino
					<input type="radio" name="sexo" value="feminino"/> Feminino
					<input type="radio" name="sexo" value="outro"/>	Outro
				</td>
			</tr>
			<tr>
				<td>País: </td>
				<td>
					<select name="pais">
						<option>Brasil</option>
						<option>Argentina</option>
						<option>Paraguai</option>
						<option>Outro</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Editar Usuário"></input></td>
			</tr>
		</table>
	</form>
	
</body>
</html>