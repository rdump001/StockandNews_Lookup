#!/usr/bin/env python
# coding: utf-8

# In[1]:


import mysql.connector
import requests
import pandas as pd
from bs4 import BeautifulSoup
from mysql.connector import Error


try:
    connection = mysql.connector.connect(host="localhost", user="root", password="MomDad@2020", database="HR_COMPANY_DATA")
    
    sql_Query = """SELECT * FROM COMPANY_NEWS_LOOK_UP WHERE COMPANY_NAME = %s"""
    
    cursor = connection.cursor(dictionary=True)
    #val = 'Ace Hardware'
    val = input("Enter the Company Name: ")
    cursor.execute(sql_Query,(val,))
    records = cursor.fetchall()
    print("Total number of rows ", cursor.rowcount)

    print("\n    NEWS    \n\n")
    for row in records:
        name = row["COMPANY_NAME"]
        title = row["ARTICLE_TITLE"]
        source = row["ARTICLE_SOURCE"]
        url = row["ARTICLE_URL"]
        
        print (" | "+name, " | "+title, " | "+source, " | "+url)
        
        
        
        
except mysql.connector.Error as error:
    print("Failed to get record from database: {}".format(error))
else:
    print("sucess")
finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        #print("MySQL connection is closed")


# In[ ]:




