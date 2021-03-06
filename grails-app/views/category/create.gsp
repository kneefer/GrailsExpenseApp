<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title>Create new category</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="list" action="index">
                <button class="btn btn-primary">List of categories</button>
            </g:link>
        </div>
        <div id="create-category" class="content scaffold-create" role="main">
            <h1>Create new category</h1>
            <g:hasErrors bean="${this.category}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.category}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:all bean="category"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-primary" value="Create" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
