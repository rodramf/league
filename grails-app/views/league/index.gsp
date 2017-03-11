
<%@ page import="com.league.League" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'league.label', default: 'League')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-league" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-league" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sortDescription" title="${message(code: 'league.sortDescription.label', default: 'Sort Description')}" />
					
						<th><g:message code="league.schedule.label" default="Schedule" /></th>
					
						<g:sortableColumn property="defaultPlaceDirection" title="${message(code: 'league.defaultPlaceDirection.label', default: 'Default Place Direction')}" />
					
						<g:sortableColumn property="defaultStartTime" title="${message(code: 'league.defaultStartTime.label', default: 'Default Start Time')}" />
					
						<g:sortableColumn property="defaultEndTime" title="${message(code: 'league.defaultEndTime.label', default: 'Default End Time')}" />
					
						<g:sortableColumn property="defaultNumberOfTeamPlayers" title="${message(code: 'league.defaultNumberOfTeamPlayers.label', default: 'Default Number Of Team Players')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${leagueInstanceList}" status="i" var="leagueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${leagueInstance.id}">${fieldValue(bean: leagueInstance, field: "sortDescription")}</g:link></td>
					
						<td>${fieldValue(bean: leagueInstance, field: "schedule")}</td>
					
						<td>${fieldValue(bean: leagueInstance, field: "defaultPlaceDirection")}</td>
					
						<td><g:formatDate date="${leagueInstance.defaultStartTime}" /></td>
					
						<td><g:formatDate date="${leagueInstance.defaultEndTime}" /></td>
					
						<td>${fieldValue(bean: leagueInstance, field: "defaultNumberOfTeamPlayers")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${leagueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
