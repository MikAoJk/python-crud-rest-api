import flask
from flask import Flask, request, redirect

app = Flask(__name__)

@app.route('/users/', methods=['GET'])
def users():
    return flask.Response(status=200, response='Hello world')

@app.route('/users', methods=['POST'])
def create():
    id = request.form['id']
    name = request.form['name']
    email = request.form['name']
    return flask.Response(status=200)

@app.route('/users', methods=['GET'])
def user():
    return flask.Response(status=200, response='Hello world')

@app.route('/users/', methods=['PUT'])
def update():
    old_name = request.form['old_name']
    new_name = request.form['new_name']
    return flask.Response(status=200)

@app.route('/delete', methods=['DELETE'])
def delete():
    name = request.form['name']
    return flask.Response(status=200)


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)