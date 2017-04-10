<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title>Users</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="create" action="create">
                <button class="btn btn-primary">Create new user</button>
            </g:link>
        </div>
        <div id="list-user" class="content scaffold-list" role="main">
            <h1>Users</h1>

            <f:table collection="${userList}" />

            <div class="pagination">
                <g:paginate total="${userCount ?: 0}" />
            </div>
        </div>
    </body>
</html>