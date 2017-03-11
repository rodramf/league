
<%@ page import="com.league.League" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-league" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-league" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list league">
			
				<g:if test="${leagueInstance?.sortDescription}">
				<li class="fieldcontain">
					<span id="sortDescription-label" class="property-label"><g:message code="league.sortDescription.label" default="Sort Description" /></span>
					
						<span class="property-value" aria-labelledby="sortDescription-label"><g:fieldValue bean="${leagueInstance}" field="sortDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.schedule}">
				<li class="fieldcontain">
					<span id="schedule-label" class="property-label"><g:message code="league.schedule.label" default="Schedule" /></span>
					
						<span class="property-value" aria-labelledby="schedule-label"><g:link controller="schedule" action="show" id="${leagueInstance?.schedule?.id}">${leagueInstance?.schedule?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.defaultPlaceDirection}">
				<li class="fieldcontain">
					<span id="defaultPlaceDirection-label" class="property-label"><g:message code="league.defaultPlaceDirection.label" default="Default Place Direction" /></span>
					
						<span class="property-value" aria-labelledby="defaultPlaceDirection-label"><g:fieldValue bean="${leagueInstance}" field="defaultPlaceDirection"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.defaultStartTime}">
				<li class="fieldcontain">
					<span id="defaultStartTime-label" class="property-label"><g:message code="league.defaultStartTime.label" default="Default Start Time" /></span>
					
						<span class="property-value" aria-labelledby="defaultStartTime-label"><g:formatDate date="${leagueInstance?.defaultStartTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.defaultEndTime}">
				<li class="fieldcontain">
					<span id="defaultEndTime-label" class="property-label"><g:message code="league.defaultEndTime.label" default="Default End Time" /></span>
					
						<span class="property-value" aria-labelledby="defaultEndTime-label"><g:formatDate date="${leagueInstance?.defaultEndTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.defaultNumberOfTeamPlayers}">
				<li class="fieldcontain">
					<span id="defaultNumberOfTeamPlayers-label" class="property-label"><g:message code="league.defaultNumberOfTeamPlayers.label" default="Default Number Of Team Players" /></span>
					
						<span class="property-value" aria-labelledby="defaultNumberOfTeamPlayers-label"><g:fieldValue bean="${leagueInstance}" field="defaultNumberOfTeamPlayers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="league.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${leagueInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="league.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${leagueInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.lastUpdate}">
				<li class="fieldcontain">
					<span id="lastUpdate-label" class="property-label"><g:message code="league.lastUpdate.label" default="Last Update" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdate-label"><g:formatDate date="${leagueInstance?.lastUpdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.matchs}">
				<li class="fieldcontain">
					<span id="matchs-label" class="property-label"><g:message code="league.matchs.label" default="Matchs" /></span>
					
						<g:each in="${leagueInstance.matchs}" var="m">
						<span class="property-value" aria-labelledby="matchs-label"><g:link controller="match" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="league.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${leagueInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${leagueInstance?.players}">
				<li class="fieldcontain">
					<span id="players-label" class="property-label"><g:message code="league.players.label" default="Players" /></span>
					
						<g:each in="${leagueInstance.players}" var="p">
						<span class="property-value" aria-labelledby="players-label"><g:link controller="player" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:leagueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${leagueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
