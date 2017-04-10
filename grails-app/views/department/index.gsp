<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="create" action="create">
                <button class="btn btn-primary">Create new department</button>
            </g:link>
        </div>
        <div id="list-department" class="content scaffold-list" role="main">
            <h1>Departments</h1>
            <f:table collection="${departmentList}" />

            <div class="pagination">
                <g:paginate total="${departmentCount ?: 0}" />
            </div>
        </div>
    </body>
</html>