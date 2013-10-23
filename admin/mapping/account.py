import requests


def groupfinder(user_id, request):
    url = 'http://localhost:5001/users/' + user_id
    r = requests.get(url)
    groups = r.json()['groups']
    if groups:
        return groups
    return None