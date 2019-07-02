from flask import Flask

app = Flask(__name__)

@app.route('/index')
def helloIndex():
    return 'Flask web application'

app.run(host='127.0.0.1', port=8081)
