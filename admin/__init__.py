import hashlib
from pyramid.authorization import ACLAuthorizationPolicy
from pyramid.config import Configurator
from pyramid.security import Allow
from admin.auth import MozillaTokenLibAuthenticationPolicy
from admin.mapping.account import groupfinder
import logging

class RootFactory(object):
    __acl__ = [ (Allow, 'admin', 'view'),
                (Allow, 'admin', 'edit') ]
    def __init__(self, request):
        pass

def main(global_config, **settings):
    auth_token = MozillaTokenLibAuthenticationPolicy(secret='what_makes_so_secret', hashmod=hashlib.sha256, callback=groupfinder, timeout=86400)
    auth_rization = ACLAuthorizationPolicy()
    config = Configurator(settings=settings,
                          root_factory=RootFactory)
    config.set_authentication_policy(auth_token)
    config.set_authorization_policy(auth_rization)
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home', '/')
    config.scan()
    requests_log = logging.getLogger("requests")
    requests_log.setLevel(logging.WARNING)
    return config.make_wsgi_app()
