"""
Flask application setup for the Customer Accounts microservice.
Talisman adds HTTP security headers, and CORS enables cross-origin API access.
"""
from flask import Flask
from flask_talisman import Talisman
from flask_cors import CORS

app = Flask(__name__)

# Add secure HTTP response headers using Flask-Talisman.
talisman = Talisman(app)

# Enable Cross-Origin Resource Sharing for API clients.
CORS(app)
