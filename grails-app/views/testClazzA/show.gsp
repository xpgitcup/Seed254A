
<%@ page import="cn.edu.cup.test.TestClazzA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'testClazzA.label', default: 'TestClazzA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-testClazzA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-testClazzA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list testClazzA">
			
				<g:if test="${testClazzAInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="testClazzA.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${testClazzAInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testClazzAInstance?.fielda}">
				<li class="fieldcontain">
					<span id="fielda-label" class="property-label"><g:message code="testClazzA.fielda.label" default="Fielda" /></span>
					
						<span class="property-value" aria-labelledby="fielda-label"><g:fieldValue bean="${testClazzAInstance}" field="fielda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testClazzAInstance?.fieldb}">
				<li class="fieldcontain">
					<span id="fieldb-label" class="property-label"><g:message code="testClazzA.fieldb.label" default="Fieldb" /></span>
					
						<span class="property-value" aria-labelledby="fieldb-label"><g:fieldValue bean="${testClazzAInstance}" field="fieldb"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:testClazzAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${testClazzAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
