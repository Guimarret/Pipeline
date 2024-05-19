def lambda_handler(event, context):
    # TODO: Add your logic here
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }