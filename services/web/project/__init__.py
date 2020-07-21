import os
from flask import Flask


DEBUG = os.environ.get('DEBUG')
app = Flask(__name__)


if __name__ == '__main__':
    app.run(debug=DEBUG)
