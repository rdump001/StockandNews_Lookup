#!/usr/bin/env python
# coding: utf-8

# In[1]:


import requests
import zipfile
import json
import io, os
import sys
import re
import mysql.connector


# In[5]:


import requests
import mysql.connector
from bs4 import BeautifulSoup

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="MomDad@2020",
  database="HR_COMPANY_DATA"
)
URL = 'https://hamptonroadsalliance.com'
page = requests.get(URL)

html = BeautifulSoup(page.content, 'html.parser')
results = html.find(id='page#26')
for a in results.find_all('a',{"class":"el-link"}):
    sections = requests.get(URL+a['href'])
    sections_html = BeautifulSoup(sections.content,'html.parser')
    sections_results = sections_html.find_all('div',{"class":"uk-child-width-1-1@s"})
    if(sections_results):
        # print (sections_results)
        for company in sections_results[0].find_all('h4',{"class":"el-title"}):
            company_title = company.text.strip()
            company_stock_symbol = " "
            company_public_ind = 'private'
            # print (company.text)
            symbol_page = requests.get("https://finance.yahoo.com/quote?p="+company.text.strip())
            symbol_page_html = BeautifulSoup(symbol_page.content,'html.parser')
            # sections = requests.get(URL+a['href'])
            if(symbol_page.history):
                # print ("Request was redirected - Final:")
                # for resp in symbol_page.history:
                # print(resp.url+"\n")
                symbol_url =symbol_page.url; 
                symbol_lookup = symbol_url.find('/quote/')
                symbol_lookup_title = symbol_page_html.find_all("h1",attrs={"data-reactid" : "7"})
                if(symbol_lookup_title):
                    temp_title = str(symbol_lookup_title[0].text.strip())
                    symbol_lookup_title_crosscheck = temp_title.find(str(company.text.strip()))
                    if(symbol_lookup > -1 and symbol_lookup_title_crosscheck >-1):
                        temp_company_stock_symbol = temp_title.split(" - ")
                        company_stock_symbol = temp_company_stock_symbol[0]
                        company_public_ind = 'public'

                mycursor = mydb.cursor()
                print (""+company_title, " | "+company_stock_symbol, " | "+company_public_ind)
                sql = "INSERT INTO COMPANY_DETAILS (COMPANY_NAME,COMPANY_STOCK_SYM,PUBLIC_IND) VALUES (%s, %s, %s)"
                val = (""+company_title, ""+company_stock_symbol, ""+company_public_ind)
                mycursor.execute(sql, val)
                mydb.commit()
            else:
                print ("Request was not redirected")


# In[ ]:




