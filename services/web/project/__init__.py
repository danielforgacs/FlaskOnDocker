import os
from flask import Flask


DEBUG = os.environ.get('DEBUG')
app = Flask(__name__)



@app.route('/')
def hello_world():
    return '<h3>Works.</h3>\n'



if __name__ == '__main__':
    app.run(debug=DEBUG)
