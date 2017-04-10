<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title>Edit category</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="btn btn-primary" action="index">List of categories</g:link>
            <g:link class="btn btn-primary" action="create">Create new category</g:link>
        </div>
        <div id="edit-category" class="content scaffold-edit" role="main">
            <h1>Edit category</h1>
            <g:hasErrors bean="${this.category}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.category}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.category}" method="PUT">
                <g:hiddenField name="version" value="${this.category?.version}" />
                <fieldset class="form">
                    <f:all bean="category"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="btn btn-primary" type="submit" value="Update" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
