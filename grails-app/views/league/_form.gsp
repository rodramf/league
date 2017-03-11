<%@ page import="com.league.League" %>



<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'sortDescription', 'error')} ">
	<label for="sortDescription">
		<g:message code="league.sortDescription.label" default="Sort Description" />
		
	</label>
	<g:textField name="sortDescription" value="${leagueInstance?.sortDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'schedule', 'error')} ">
	<label for="schedule">
		<g:message code="league.schedule.label" default="Schedule" />
		
	</label>
	<g:select id="schedule" name="schedule.id" from="${com.league.Schedule.list()}" optionKey="id" value="${leagueInstance?.schedule?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'defaultPlaceDirection', 'error')} ">
	<label for="defaultPlaceDirection">
		<g:message code="league.defaultPlaceDirection.label" default="Default Place Direction" />
		
	</label>
	<g:textField name="defaultPlaceDirection" value="${leagueInstance?.defaultPlaceDirection}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'defaultStartTime', 'error')} ">
	<label for="defaultStartTime">
		<g:message code="league.defaultStartTime.label" default="Default Start Time" />
		
	</label>
	<g:datePicker name="defaultStartTime" precision="day"  value="${leagueInstance?.defaultStartTime}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'defaultEndTime', 'error')} ">
	<label for="defaultEndTime">
		<g:message code="league.defaultEndTime.label" default="Default End Time" />
		
	</label>
	<g:datePicker name="defaultEndTime" precision="day"  value="${leagueInstance?.defaultEndTime}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'defaultNumberOfTeamPlayers', 'error')} ">
	<label for="defaultNumberOfTeamPlayers">
		<g:message code="league.defaultNumberOfTeamPlayers.label" default="Default Number Of Team Players" />
		
	</label>
	<g:field name="defaultNumberOfTeamPlayers" type="number" value="${leagueInstance.defaultNumberOfTeamPlayers}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="league.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${leagueInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'lastUpdate', 'error')} required">
	<label for="lastUpdate">
		<g:message code="league.lastUpdate.label" default="Last Update" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastUpdate" precision="day"  value="${leagueInstance?.lastUpdate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'matchs', 'error')} ">
	<label for="matchs">
		<g:message code="league.matchs.label" default="Matchs" />
		
	</label>
	<g:select name="matchs" from="${com.league.Match.list()}" multiple="multiple" optionKey="id" size="5" value="${leagueInstance?.matchs*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="league.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${leagueInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leagueInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="league.players.label" default="Players" />
		
	</label>
	<g:select name="players" from="${com.league.Player.list()}" multiple="multiple" optionKey="id" size="5" value="${leagueInstance?.players*.id}" class="many-to-many"/>

</div>

