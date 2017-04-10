<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title>Categories</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success" role="status">${flash.message}</div>
        </g:if>
        <div class="btn-group" role="group" aria-label="...">
            <g:link class="create" action="create">
                <button class="btn btn-primary">Create new category</button>
            </g:link>
        </div>
        <div id="list-category" class="content scaffold-list" role="main">
            <h1>Categories</h1>
            <f:table collection="${categoryList}" />

            <div class="pagination">
                <g:paginate total="${categoryCount ?: 0}" />
            </div>
        </div>
    </body>
</html>