# coding: utf-8
from pyramid.httpexceptions import HTTPFound
from pyramid.security import remember, forget, authenticated_userid
from pyramid.view import view_config, forbidden_view_config


# @view_config(route_name='home', renderer='index.mak')
@view_config(route_name='home', renderer='index.mak', permission='view')
def home_view(request):
    return dict()


@view_config(name='login', renderer='login.mak')
@forbidden_view_config(renderer='login.mak')
def login_view(request):
    return dict()


@view_config(name='test', renderer='json')
def test_view(request):
    f = open("/Users/binleixue/Desktop/1.jpg", 'wb')
    file = request.POST['file'].file
    f.write(file.read())
    f.close()
    return dict()


