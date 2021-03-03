import json
import math 
import random 
# TODO implement


def lambda_handler(event, context):
    randomNumber2 = random.randint(0,100)
    randomNumber1 = random.randint(0,1000)
    total = (randomNumber1 ** 2) + (randomNumber2 ** 2)
    c2 = math.sqrt(total)
    print("a squared " + str(randomNumber1))
    print("+")
    print("b squared " + str(randomNumber2))
    print("=")
    print("c squared " + str(c2))
    """
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
"""
