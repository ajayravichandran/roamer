<%@ page import="roamer.Trip" %>



<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'airline', 'error')} required">
	<label for="airline">
		<g:message code="trip.airline.label" default="Airline" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="airline" name="airline.id" from="${roamer.Airline.list()}" optionKey="id" required="" value="${tripInstance?.airline?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="trip.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${tripInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="trip.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${tripInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'nameOfPlace', 'error')} ">
	<label for="nameOfPlace">
		<g:message code="trip.nameOfPlace.label" default="Name Of Place" />
		
	</label>
	<g:textField name="nameOfPlace" value="${tripInstance?.nameOfPlace}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="trip.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${tripInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'tripDescription', 'error')} ">
	<label for="tripDescription">
		<g:message code="trip.tripDescription.label" default="Trip Description" />
		
	</label>
	<g:textField name="tripDescription" value="${tripInstance?.tripDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tripInstance, field: 'tripNotes', 'error')} ">
	<label for="tripNotes">
		<g:message code="trip.tripNotes.label" default="Trip Notes" />
		
	</label>
	<g:textField name="tripNotes" value="${tripInstance?.tripNotes}"/>
</div>

