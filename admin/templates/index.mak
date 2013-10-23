<!DOCTYPE html>
<html lang="en" ng-app="admin">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>后台管理</title>
    <link rel="shortcut icon" href="${request.static_url('admin:static/favicon.ico')}"/>
    <!-- Bootstrap -->
##    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.static_url('admin:static/bootstrap/css/bootstrap.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/base.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/navbar.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/adjust.css')}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${request.static_url('admin:static/html5shiv.js')}"></script>
    <script src="${request.static_url('admin:static/respond.min.js')}"></script>
    <![endif]-->
</head>
<body>
<%namespace name="comp" file="component.mak" />
${comp.navbar_with_sidebar()}


<div class="container" ui-view></div>


<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular-cookies.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular-touch.min.js"></script>
<script src="//cdn.jsdelivr.net/restangular/latest/restangular.min.js"></script>
<script src="${request.static_url('admin:static/spin.min.js')}"></script>
<script src="${request.static_url('admin:static/angular-bootstrap/ui-bootstrap-tpls-0.6.0-SNAPSHOT.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/lib/angular-ui-router.min.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/index/controllers.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/index/services.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/index/directives.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/index/filters.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/index/app.js')}"></script>
</body>
</html>