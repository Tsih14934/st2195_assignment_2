
import pandas as pd
from bs4 import BeautifulSoup
import requests

outcome = requests.get ('https://en.wikipedia.org/wiki/Comma-separated_values')
result = BeautifulSoup(outcome.text, 'html.parser')


res = result.find(id = 'Example')
final = res.findNext('pre').text

print(final)

f = open ('cars.csv','w')
f.write(final)
f.close

pd.read_csv('cars.csv')

