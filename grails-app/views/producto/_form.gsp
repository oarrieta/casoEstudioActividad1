<%@ page import="tienda.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${productoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="producto.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" min="5" value="${productoInstance.codigo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'compras', 'error')} ">
	<label for="compras">
		<g:message code="producto.compras.label" default="Compras" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'mueble', 'error')} ">
	<label for="mueble">
		<g:message code="producto.mueble.label" default="Mueble" />
		
	</label>
	<g:checkBox name="mueble" value="${productoInstance?.mueble}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="producto.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: productoInstance, field: 'precio')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'productoElectrico', 'error')} ">
	<label for="productoElectrico">
		<g:message code="producto.productoElectrico.label" default="Producto Electrico" />
		
	</label>
	<g:checkBox name="productoElectrico" value="${productoInstance?.productoElectrico}" />
</div>

