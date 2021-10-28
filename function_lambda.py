from __future__ import print_function

import json

import boto3


def lambda_sample(event, context):
    print("Received event: " + json.dumps(event, indent=2))

    dynamo = boto3.resource('dynamodb').Table('users')

    dynamo.put_item(Item=event)

    print(dynamo.scan())
