<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title>Edit department</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index">List of departments</g:link>
            <g:link class="btn btn-primary" action="create">Create new department</g:link>
        </div>
        <div id="edit-department" class="content scaffold-edit" role="main">
            <h1>Edit department</h1>
            <g:hasErrors bean="${this.department}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.department}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.department}" method="PUT">
                <g:hiddenField name="version" value="${this.department?.version}" />
                <fieldset class="form">
                    <f:all bean="department"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="btn btn-primary" type="submit" value="Update" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
