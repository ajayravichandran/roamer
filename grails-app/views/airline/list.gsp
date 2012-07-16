
<%@ page import="roamer.Airline" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'airline.label', default: 'Airline')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-airline" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-airline" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="airlineNumber" title="${message(code: 'airline.airlineNumber.label', default: 'Airline Number')}" />
					
						<g:sortableColumn property="frequentFlyer" title="${message(code: 'airline.frequentFlyer.label', default: 'Frequent Flyer')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'airline.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="notes" title="${message(code: 'airline.notes.label', default: 'Notes')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'airline.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${airlineInstanceList}" status="i" var="airlineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${airlineInstance.id}">${fieldValue(bean: airlineInstance, field: "airlineNumber")}</g:link></td>
					
						<td>${fieldValue(bean: airlineInstance, field: "frequentFlyer")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "notes")}</td>
					
						<td>${fieldValue(bean: airlineInstance, field: "url")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${airlineInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
