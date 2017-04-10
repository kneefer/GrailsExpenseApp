<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Grails Expenses App - Szymon Bartnik OS2</title>
</head>
<body>
    <div class="row row-offcanvas row-offcanvas-right">
        <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
        </p>
        <div class="jumbotron">
            <h2>WTTO - Grails Expenses App</h2>
            <p>by Szymon Bartnik</p>
        </div>
        <p>
            This application has simple CRUD functionality for following domain classes:
        </p>
        <ul class="list-group">
            <li class="list-group-item">
                <h4 class="list-group-item-heading">User</h4>
                <p class="list-group-item-text">User we can manage</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">Department</h4>
                <p class="list-group-item-text">Container for users.</br>(ONE department -> MANY users)</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">Expense</h4>
                <p class="list-group-item-text">Expense we are tracking. Associated with user and category.</br>(ONE user -> MANY expenses)</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">Category</h4>
                <p class="list-group-item-text">Category of expense we are tracking.</br>ONE category -> MANY expenses)</p>
            </li>
        </ul>
    </div>
<footer class="text-center">by Szymon Bartnik (OS2)</footer>
</body>
</html>
