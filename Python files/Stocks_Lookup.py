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
    
    sql_Query = """SELECT * FROM COMPANY_STOCK_DETAILS_LOOK_UP WHERE COMPANY_STOCK_SYM = %s"""
    
    cursor = connection.cursor(dictionary=True)
    #val = 'Ace Hardware'
    val = input("Enter the Stock Symbol: ")
    cursor.execute(sql_Query,(val,))
    records = cursor.fetchall()
    print("Total number of rows ", cursor.rowcount)

# selecting column value into varible
    print("\nPrinting each Stock details\n\n")
    #print (" Name ", " Sym ",  " Title ", "Value")
    for row in records:
        name = row["COMPANY_NAME"]
        symbol = row["COMPANY_STOCK_SYM"]
        stock_title = row["COMPANY_STOCK_TITLE"]
        stock_value = row["COMPANY_STOCK_VALUE"]
        
        #print(tabulate([name, symbol, stock_title, stock_value], headers=['Name', 'Sym', 'Title', 'Value']))
        print (" | "+name, " | "+symbol, " | "+stock_title, " | "+stock_value)
        
        
        
        
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




