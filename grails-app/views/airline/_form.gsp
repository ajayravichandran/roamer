<%@ page import="roamer.Airline" %>



<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'airlineNumber', 'error')} ">
	<label for="airlineNumber">
		<g:message code="airline.airlineNumber.label" default="Airline Number" />
		
	</label>
	<g:textField name="airlineNumber" value="${airlineInstance?.airlineNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'frequentFlyer', 'error')} ">
	<label for="frequentFlyer">
		<g:message code="airline.frequentFlyer.label" default="Frequent Flyer" />
		
	</label>
	<g:textField name="frequentFlyer" value="${airlineInstance?.frequentFlyer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="airline.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${airlineInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="airline.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${airlineInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'trip', 'error')} ">
	<label for="trip">
		<g:message code="airline.trip.label" default="Trip" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${airlineInstance?.trip?}" var="t">
    <li><g:link controller="trip" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="trip" action="create" params="['airline.id': airlineInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'trip.label', default: 'Trip')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: airlineInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="airline.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${airlineInstance?.url}"/>
</div>

