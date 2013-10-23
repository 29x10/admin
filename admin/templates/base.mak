<!DOCTYPE html>
<html lang="en" ng-app="boot">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>后台管理</title>
    <link rel="shortcut icon" href="${request.static_url('admin:static/favicon.ico')}"/>
    <!-- Bootstrap -->
    <link href="${request.static_url('admin:static/bootstrap/css/bootstrap.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/icons/css/bootstrap-glyphicons.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/docs.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/adjust.css')}" rel="stylesheet">
    <%block name="extra_css" />
</head>
<body>
<div class="header" ng-controller="NavBar">
    <div class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
        <div class="container">

            <button type="button" class="navbar-toggle collapsed" ng-click="isNav =!isNav">
                <span class="glyphicon glyphicon-list"></span>
            </button>
            <button type="button" class="navbar-toggle collapsed" ng-click="isSearch =!isSearch">
                <span class="glyphicon glyphicon-search"></span>
            </button>

            <a class="navbar-brand" href="/">后台管理</a>

            <div class="nav-collapse nav-bar collapse" collapse="isNav">
                <ul class="nav navbar-nav">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${user_login}</a></li>
                    <li><a href ng-click="logout()"><span class="glyphicon glyphicon-eject"></span> 登出</a></li>
                </ul>
                <ul class="nav navbar-nav">
                    <li ${'class=active' if request.path == '/' else ''}><a href="/"><span
                            class="glyphicon glyphicon-home"></span> 首页</a></li>
                </ul>

            </div>
            <!-- /.nav-collapse -->
            <div class="nav-collapse search-bar collapse" collapse="isSearch">
                <form class="navbar-form" action="">
                    <div class="input-group">
                        <input type="text" placeholder="搜索">
                        <span class="input-group-btn">
                            <button class="btn" type="button">搜索</button>
                        </span>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.modal -->
</div>


    ${self.body()}

<script src="${request.static_url('admin:static/angular-seed/app/lib/angular/angular.min.js')}"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular-resource.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular-cookies.min.js"></script>
<script src="${request.static_url('admin:static/angular-seed/app/lib/custom-ng-focus.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/login/controllers.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/login/services.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/login/app.js')}"></script>
    <%block name="extra_js" />
</body>
</html>