<%@ page import="cn.edu.cup.test.TestClazzB" %>



<div class="fieldcontain ${hasErrors(bean: testClazzBInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="testClazzB.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testClazzBInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testClazzBInstance, field: 'fieldc', 'error')} required">
	<label for="fieldc">
		<g:message code="testClazzB.fieldc.label" default="Fieldc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fieldc" value="${fieldValue(bean: testClazzBInstance, field: 'fieldc')}" required=""/>

</div>

