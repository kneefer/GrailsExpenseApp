<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="create" action="create">
                <button class="btn btn-primary">Create new expense</button>
            </g:link>
        </div>
        <div id="list-expense" class="content scaffold-list" role="main">
            <h1>Expenses</h1>
            <f:table displayStyle="" collection="${expenseList}" />

            <div class="pagination">
                <g:paginate total="${expenseCount ?: 0}" />
            </div>
        </div>
    </body>
</html>