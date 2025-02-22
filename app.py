from flask import Flask
import time

app = Flask(__name__)

time.sleep(10)

@app.route('/')
def hello_world():
    return 'Hello World'

app.run(host="0.0.0.0", port="5000")
