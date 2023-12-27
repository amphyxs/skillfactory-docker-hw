import requests
import sys

url = sys.argv[1]
response = requests.get(f'{url}/favicon.ico')
with open(f'./favicons/favicon.ico', 'w+b') as fout:
  fout.write(response.content)
