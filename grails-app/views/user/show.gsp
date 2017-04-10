<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title>Selected user</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index"> List of users</g:link>
            <g:link class="btn btn-primary" action="create">Create new user</g:link>
        </div>
        <div id="show-user" class="content scaffold-show" role="main">
            <h1>Selected user</h1>
            <f:display bean="user" />
            <g:form resource="${this.user}" method="DELETE">
                <fieldset class="btn-group">
                    <g:link class="btn btn-primary" action="edit" resource="${this.user}">Edit</g:link>
                    <g:submitButton class="btn btn-danger" type="submit" value="Delete" onclick="return confirm('Are you sure?');"  name="deleteButton"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
