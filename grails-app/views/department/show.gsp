<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title>Selected department</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index"> List of departments</g:link>
            <g:link class="btn btn-primary" action="create">Create new department</g:link>
        </div>
        <div id="show-department" class="content scaffold-show" role="main">
            <h1>Selected department</h1>
            <f:display bean="department" />
            <g:form resource="${this.department}" method="DELETE">
                <fieldset class="btn-group">
                    <g:link class="btn btn-primary" action="edit" resource="${this.department}">Edit</g:link>
                    <g:submitButton class="btn btn-danger" type="submit" value="Delete" onclick="return confirm('Are you sure?');"  name="deleteButton"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
