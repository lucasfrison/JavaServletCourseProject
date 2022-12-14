<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		Lista de empresas: <br>
		
		<ul>
			<c:forEach items="${empresas}" var="empresa">
				<li>
					${ empresa.nome } - <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
					<a href="/gerenciador/remover-empresa?id=${ empresa.id }" >Remover</a>
					<a href="/gerenciador/mostrar-empresa?id=${ empresa.id }" >Editar</a>
				</li>
			</c:forEach>
		</ul>
</body>
</html>