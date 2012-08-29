<%@ page import="tienda.Compra" %>



<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'cantidadTotal', 'error')} required">
	<label for="cantidadTotal">
		<g:message code="compra.cantidadTotal.label" default="Cantidad Total" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidadTotal" value="${fieldValue(bean: compraInstance, field: 'cantidadTotal')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="compra.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" min="5" value="${compraInstance.codigo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="compra.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${tienda.Cliente.list()}" optionKey="id" required="" value="${compraInstance?.cliente?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="compra.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${compraInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: compraInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="compra.productos.label" default="Productos" />
		
	</label>
	<g:select name="productos" from="${tienda.Producto.list()}" multiple="multiple" optionKey="id" size="5" value="${compraInstance?.productos*.id}" class="many-to-many"/>
</div>

