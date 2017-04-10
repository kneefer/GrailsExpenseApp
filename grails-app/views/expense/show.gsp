<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
        <title>Selected expense</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index"> List of expenses</g:link>
            <g:link class="btn btn-primary" action="create">Create new expense</g:link>
        </div>
        <div id="show-expense" class="content scaffold-show" role="main">
            <h1>Selected expense</h1>
            <f:display bean="expense" />
            <g:form resource="${this.expense}" method="DELETE">
                <fieldset class="btn-group">
                    <g:link class="btn btn-primary" action="edit" resource="${this.expense}">Edit</g:link>
                    <g:submitButton class="btn btn-danger" type="submit" value="Delete" onclick="return confirm('Are you sure?');"  name="deleteButton"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
