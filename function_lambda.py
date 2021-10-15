import json


def getting_started_with_python(event, context):
    return {
        'statusCode': 200,
        'body': json.dumps(event)
    }
