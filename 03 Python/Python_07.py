import json

json_string = '["hello"]' #json stringi

json_data = json.loads(json_string)

print(json_data[0])



#internetten data çekmeyi öğren
import requests

def get_name_country(name):
    url = "url{}".format(name)
    response = request.get(url) #bu urldeki bilgiyi bize döndür
    data = response.json()
    print(data)

get_name_country("ahmet")



def get_countruies():
    url = "url"
    response = request.get(url)
    data = response.json()
    print(data[0])

get_countruies()












