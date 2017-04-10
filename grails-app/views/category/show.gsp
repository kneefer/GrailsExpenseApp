<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title>Selected category</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index"> List of categories</g:link>
            <g:link class="btn btn-primary" action="create">Create new category</g:link>
        </div>
        <div id="show-category" class="content scaffold-show" role="main">
            <h1>Selected category</h1>
            <f:display bean="category" />
            <g:form resource="${this.category}" method="DELETE">
                <fieldset class="btn-group">
                    <g:link class="btn btn-primary" action="edit" resource="${this.category}">Edit</g:link>
                    <g:submitButton class="btn btn-danger" type="submit" value="Delete" onclick="return confirm('Are you sure?');"  name="deleteButton"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
