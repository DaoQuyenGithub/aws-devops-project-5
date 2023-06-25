from flask import Flask
from flask.logging import create_logger
import logging
from datetime import date

app = Flask(__name__)
Log = create_logger(app)
Log.setLevel(logging.INFO)

@app.route("/")
def entry():
    html = f"<h2>This is the Hello World application V1</h2>"
    return html.format(format)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)
    Log.info("App is starting at port 80")