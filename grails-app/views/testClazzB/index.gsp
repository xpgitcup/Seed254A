
<%@ page import="cn.edu.cup.test.TestClazzB" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'testClazzB.label', default: 'TestClazzB')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-testClazzB" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-testClazzB" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'testClazzB.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="fieldc" title="${message(code: 'testClazzB.fieldc.label', default: 'Fieldc')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${testClazzBInstanceList}" status="i" var="testClazzBInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${testClazzBInstance.id}">${fieldValue(bean: testClazzBInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: testClazzBInstance, field: "fieldc")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${testClazzBInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
