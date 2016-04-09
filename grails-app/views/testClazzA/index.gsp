
<%@ page import="cn.edu.cup.test.TestClazzA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'testClazzA.label', default: 'TestClazzA')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-testClazzA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-testClazzA" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'testClazzA.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="fielda" title="${message(code: 'testClazzA.fielda.label', default: 'Fielda')}" />
					
						<g:sortableColumn property="fieldb" title="${message(code: 'testClazzA.fieldb.label', default: 'Fieldb')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${testClazzAInstanceList}" status="i" var="testClazzAInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${testClazzAInstance.id}">${fieldValue(bean: testClazzAInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: testClazzAInstance, field: "fielda")}</td>
					
						<td>${fieldValue(bean: testClazzAInstance, field: "fieldb")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${testClazzAInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
