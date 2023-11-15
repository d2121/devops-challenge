import os
import boto3
from flask import Flask, jsonify

app = Flask(__name__)

def get_secret_string(code_name):
    dynamodb = boto3.resource('dynamodb')
    table = dynamodb.Table('devops-challenge')
    response = table.get_item(Key={'code_name': code_name})
    return response.get('Item', {}).get('secret_code')

@app.route('/secret')
def secret():
    secret_code = get_secret_string('thedoctor')
    return jsonify(secret_code=secret_code)

@app.route('/health')
def health():
    return jsonify(status='healthy', container='link_to_docker_hub', project='github_project_link')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
