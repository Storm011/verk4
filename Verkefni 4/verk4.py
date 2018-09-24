#from sys import argv
from bottle import *
import urllib.request, json

'''
with open('gengi.json','r') as skra:
		gengi = json.load(skra)
	print(gogn)
'''

#templates
@route('/')
def index():
    return   '''
    <h2>Verkefni 4</h2>
    <p><a href='/a'>Local Json</a></p>
    <p><a href='/b'>Json API</a></p>
    '''
#Template dæmi - json
@route('/a')
def index():
    return template('index.tpl')

#####################################################

with urllib.request.urlopen('http://apis.is/currency/') as url:
    data = json.loads(url.read().decode())

@route('/b')
def index():
    return template('index2.tpl', data=data)
#####################################################

@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./static')


@error(404)
def villa(error):
    return "<h2 style='color:blue'>ERROR</h2>"

run(host='localhost', port=8080, reloader=True, debug=True)
