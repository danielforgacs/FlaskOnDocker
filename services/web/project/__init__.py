import os
from flask import Flask, jsonify, send_from_directory
from flask_sqlalchemy import SQLAlchemy


DEBUG = os.environ.get('DEBUG')
app = Flask(__name__)
app.config.from_object('project.config.Config')
db = SQLAlchemy(app)



class User(db.Model):
    __tablename__ = 'users'

    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(128), unique=True, nullable=False)
    active = db.Column(db.Boolean(), default=True, nullable=False)

    def __init__(self, email):
        self.email = email



@app.route('/')
def hello_world():
    allusers = User.query.all()
    return jsonify(hello='world', usercount=len(allusers))



@app.route('/static/<path:filename>')
def staticfiles(filename):
    return send_from_directory(app.config('STATIC_FOLDER'), filename)



if __name__ == '__main__':
    app.run(debug=DEBUG)
