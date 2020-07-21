#!/usr/bin/env python
# coding: utf-8

# In[105]:


import mysql.connector
import requests
import mysql.connector
from bs4 import BeautifulSoup
from mysql.connector import Error

URL1 = 'https://finance.yahoo.com/quote/'
page = requests.get(URL1)

try:
    connection = mysql.connector.connect(host="localhost", user="root", password="MomDad@2020", database="HR_COMPANY_DATA")

    sql_Query = "Select COMPANY_ID,COMPANY_STOCK_SYM FROM HR_COMPANY_DATA.COMPANY_DETAILS WHERE PUBLIC_IND = 'public' "
    cursor = connection.cursor(dictionary=True)
    cursor.execute(sql_Query)
    records = cursor.fetchall()
    print("Total number of rows ", cursor.rowcount)

    # selecting column value into varible
    print("\nPrinting each Stock details\n\n")
    for row in records:
        symbol = row["COMPANY_STOCK_SYM"]
        
        details_page=requests.get("https://finance.yahoo.com/quote/"+symbol)
        details_page_html=BeautifulSoup(details_page.content,'html.parser')
        
        details_results = details_page_html.find('div',{"data-test":"quote-summary-stats"})
        for tr in details_results.find_all("tr"):
            inner_tds = tr.find_all("td")
            mycursor = connection.cursor()
            sql = "INSERT INTO COMPANY_STOCK_DETAILS (COMPANY_ID,COMPANY_STOCK_TITLE,COMPANY_STOCK_VALUE) VALUES (%s, %s,%s)"
            val = (row["COMPANY_ID"], ""+inner_tds[0].text, ""+inner_tds[1].text)
            mycursor.execute(sql, val)
            connection.commit()
            print (inner_tds[0].text+' | '+inner_tds[1].text)
        
        
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




