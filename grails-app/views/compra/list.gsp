
<%@ page import="tienda.Compra" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compra" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cantidadTotal" title="${message(code: 'compra.cantidadTotal.label', default: 'Cantidad Total')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'compra.codigo.label', default: 'Codigo')}" />
					
						<th><g:message code="compra.cliente.label" default="Cliente" /></th>
					
						<g:sortableColumn property="fecha" title="${message(code: 'compra.fecha.label', default: 'Fecha')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compraInstanceList}" status="i" var="compraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compraInstance.id}">${fieldValue(bean: compraInstance, field: "cantidadTotal")}</g:link></td>
					
						<td>${fieldValue(bean: compraInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: compraInstance, field: "cliente")}</td>
					
						<td><g:formatDate date="${compraInstance.fecha}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${compraInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
