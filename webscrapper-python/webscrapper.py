"""
import requests
import inflection
from bs4 import BeautifulSoup

r = requests.get('http://www.dailysmarty.com/topics/python')
soup = BeautifulSoup(r.text, "html.parser")

def web_scrapper(tag):
    contenedores = soup.find_all(tag)
    
    for links in contenedores:
        links = links.find('a')
        links = links.get('href')
        links = links.strip('/')
        links = links.lstrip('posts')
        links = links.strip('/')
        links = inflection.titleize(links)
        
        print(links)


web_scrapper('h2')

"""

#Solución Jordan

import requests
from bs4 import BeautifulSoup
from inflection import titleize

def title_generator(links):
    titles = []

    def post_formatter(url):
        if 'posts' in url:
            url = url.split('/')[-1]
            url = url.replace('-', ' ')
            url = titleize(url)
            titles.append(url)

# UPDATED CODE
    for link in links:
        if link.get('href') == None:
            continue
        else:
            post_formatter(link.get("href"))
# UPDATED CODE

    return titles


r = requests.get('http://www.dailysmarty.com/topics/python')
soup = BeautifulSoup(r.text, 'html.parser')
links = soup.find_all('a')
titles = title_generator(links)

for title in titles:
    print(title)