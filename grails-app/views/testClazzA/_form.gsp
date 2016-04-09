<%@ page import="cn.edu.cup.test.TestClazzA" %>



<div class="fieldcontain ${hasErrors(bean: testClazzAInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="testClazzA.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testClazzAInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: testClazzAInstance, field: 'fielda', 'error')} required">
	<label for="fielda">
		<g:message code="testClazzA.fielda.label" default="Fielda" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fielda" value="${fieldValue(bean: testClazzAInstance, field: 'fielda')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: testClazzAInstance, field: 'fieldb', 'error')} required">
	<label for="fieldb">
		<g:message code="testClazzA.fieldb.label" default="Fieldb" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fieldb" value="${fieldValue(bean: testClazzAInstance, field: 'fieldb')}" required=""/>

</div>

