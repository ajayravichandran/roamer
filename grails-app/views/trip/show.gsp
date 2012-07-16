
<%@ page import="roamer.Trip" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trip" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trip">
			
				<g:if test="${tripInstance?.airline}">
				<li class="fieldcontain">
					<span id="airline-label" class="property-label"><g:message code="trip.airline.label" default="Airline" /></span>
					
						<span class="property-value" aria-labelledby="airline-label"><g:link controller="airline" action="show" id="${tripInstance?.airline?.id}">${tripInstance?.airline?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tripInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="trip.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${tripInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tripInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="trip.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${tripInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tripInstance?.nameOfPlace}">
				<li class="fieldcontain">
					<span id="nameOfPlace-label" class="property-label"><g:message code="trip.nameOfPlace.label" default="Name Of Place" /></span>
					
						<span class="property-value" aria-labelledby="nameOfPlace-label"><g:fieldValue bean="${tripInstance}" field="nameOfPlace"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tripInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="trip.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${tripInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tripInstance?.tripDescription}">
				<li class="fieldcontain">
					<span id="tripDescription-label" class="property-label"><g:message code="trip.tripDescription.label" default="Trip Description" /></span>
					
						<span class="property-value" aria-labelledby="tripDescription-label"><g:fieldValue bean="${tripInstance}" field="tripDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tripInstance?.tripNotes}">
				<li class="fieldcontain">
					<span id="tripNotes-label" class="property-label"><g:message code="trip.tripNotes.label" default="Trip Notes" /></span>
					
						<span class="property-value" aria-labelledby="tripNotes-label"><g:fieldValue bean="${tripInstance}" field="tripNotes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tripInstance?.id}" />
					<g:link class="edit" action="edit" id="${tripInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
