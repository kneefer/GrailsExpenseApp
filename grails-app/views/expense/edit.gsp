<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'expense.label', default: 'Expense')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index">List of expenses</g:link>
            <g:link class="btn btn-primary" action="create">Create new expense</g:link>
        </div>
        <div id="edit-expense" class="content scaffold-edit" role="main">
            <h1>Edit expense</h1>
            <g:hasErrors bean="${this.expense}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.expense}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.expense}" method="PUT">
                <g:hiddenField name="version" value="${this.expense?.version}" />
                <fieldset class="form">
                    <f:all bean="expense"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="btn btn-primary" type="submit" value="Update" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
