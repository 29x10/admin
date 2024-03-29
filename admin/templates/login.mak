<!DOCTYPE html>
<html lang="en" ng-app="login">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>后台管理 | 登陆</title>
    <link rel="shortcut icon" href="${request.static_url('admin:static/favicon.ico')}"/>
    <!-- Bootstrap -->
##    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.static_url('admin:static/bootstrap/css/bootstrap.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/base.css')}" rel="stylesheet">
    <link href="${request.static_url('admin:static/login.css')}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${request.static_url('admin:static/html5shiv.js')}"></script>
    <script src="${request.static_url('admin:static/respond.min.js')}"></script>
    <![endif]-->
</head>
<body class="login">
<div class="container" ng-controller="adminLogin">
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4 box">
            <h3>登陆员工账号</h3>
            <hr />
            <form class="form-horizontal" name="loginForm">
                <div class="form-group" ng-class="{'has-error': (loginUserF && !(loginForm.loginUser.$valid)) || userNExist}">
                    <label class="control-label" for="loginUser">用户名: </label>
                    <input class="form-control" type="text" id="loginUser" name="loginUser" placeholder="用户名" autocomplete="off"
                           ng-model="login.user"
                           ng-click="rmNUE()"
                           ng-focus="loginUserF=true"
                           ng-blur="loginUserF=false"
                           ng-minlength="2" ng-maxlength="30"
                           ng-pattern="/^[A-Za-z0-9\u4e00-\u9fa5][\u4e00-\u9fa5\w.-@]*$/"
                           required>
                    <div class="alert" ng-show="loginUserF && loginForm.loginUser.$error.minlength">
                        用户名不能少于2个字符
                    </div>
                    <div class="alert" ng-show="loginUserF && loginForm.loginUser.$error.maxlength">
                        用户名不能多于30个字符
                    </div>
                    <div class="alert" ng-show="loginUserF && loginForm.loginUser.$error.required">
                        用户名不能为空
                    </div>
                    <div class="alert" ng-show="loginUserF && loginForm.loginUser.$error.pattern">
                        用户名只能以中英文数字开头，其余为中英文、数字、点、减号、@或者下划线
                    </div>
                    <div class="alert" ng-show="userNExist">
                        用户不存在
                    </div>
                </div>
                <div class="form-group" ng-class="{'has-error': (loginPsdF && !(loginForm.loginPsd.$valid)) || passError}">
                    <label class="control-label" for="loginPsd">密码:</label>
                    <input class="form-control" type="password" id="loginPsd" name="loginPsd" placeholder="密码" autocomplete="off"
                           ng-model="login.password"
                           ng-focus="loginPsdF=true"
                           ng-blur="loginPsdF=false"
                           ng-click="rmPasError()"
                           ng-minlength="6" ng-maxlength="30"
                           ng-pattern="/^[\w\-\~\`\!\@\#\$\%\^\&\*\(\)\+\=\\\{\}\[\]\|\;\:\'\&quot;\,\.\/\<\>\?]+$/"
                           required>
                    <div class="alert" ng-show="loginPsdF && loginForm.loginPsd.$error.minlength">
                        密码不能少于6个字符
                    </div>
                    <div class="alert" ng-show="loginPsdF && loginForm.loginPsd.$error.maxlength">
                        密码不能多于30个字符
                    </div>
                    <div class="alert" ng-show="loginPsdF && loginForm.loginPsd.$error.required">
                        密码不能为空
                    </div>
                    <div class="alert" ng-show="loginPsdF && loginForm.loginPsd.$error.pattern">
                        密码包含非法字符
                    </div>
                    <div class="alert" ng-show="passError">
                        密码不正确
                    </div>
                </div>
                <div class="forget">
                    <span>没有帐号?</span>
                    <a href="/signup">点击注册</a>
                </div>
                <a href="/" type="button" class="btn btn-default">返回首页</a>
                <button type="submit" class="btn btn-primary" ng-disabled="waitLogin || !(loginForm.$valid)" ng-click="loginSubmit()">
                    <span class="glyphicon glyphicon-log-in"></span> {{ loginText }}
                </button>
            </form>
        </div>
    </div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular-resource.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular-cookies.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular-touch.min.js"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/login/controllers.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/login/services.js')}"></script>
<script src="${request.static_url('admin:static/angular-seed/app/js/login/app.js')}"></script>
</body>
</html>

