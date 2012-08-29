<%@ page import="tienda.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="50" value="${clienteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="cliente.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" min="10" value="${clienteInstance.cedula}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'compras', 'error')} ">
	<label for="compras">
		<g:message code="cliente.compras.label" default="Compras" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clienteInstance?.compras?}" var="c">
    <li><g:link controller="compra" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="compra" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'compra.label', default: 'Compra')])}</g:link>
</li>
</ul>

</div>

