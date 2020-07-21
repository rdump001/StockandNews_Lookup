#!/usr/bin/env python
# coding: utf-8

# In[20]:


import mysql.connector
import requests
from bs4 import BeautifulSoup
from mysql.connector import Error


URL1 = 'https://www.google.com/search?q='
page = requests.get(URL1)



try:
    connection = mysql.connector.connect(host="localhost", user="root", password="MomDad@2020", database="HR_COMPANY_DATA")

    sql_Query = "Select COMPANY_NAME,COMPANY_ID FROM HR_COMPANY_DATA.COMPANY_DETAILS"
    cursor = connection.cursor(dictionary=True)
    cursor.execute(sql_Query)
    records = cursor.fetchall()
    print("Total number of rows ", cursor.rowcount)

# selecting column value into varible
    print("\nPrinting each Stock details\n\n")
    for row in records:
        name = row["COMPANY_NAME"]
        if(name):
            print (name)
            news_page=requests.get("https://www.google.com/search?q="+name+"&tbm=nws")
            news_page_html=BeautifulSoup(news_page.content,'html.parser')
#             print (news_page_html)
#             print (news_page_html.find("div",{"id":"knowledge-finance-wholepage__entity-summary"}))
            news_results = news_page_html.find_all('div',{"class":"ZINbbc xpd O9g5cc uUPGi"})
            for news in news_results:
                article_section = news.find_all("div",{"class":"kCrYT"})
                if(article_section):
#                     print (article_section)
#                 for news in news_results:
                    article = article_section[0].find("a")
                    mycursor = connection.cursor()
                    sql = "INSERT INTO COMPANY_STOCK_NEWS (COMPANY_ID,ARTICLE_TITLE,ARTICLE_SOURCE,ARTICLE_URL) VALUES (%s, %s,%s,%s)"
                    val = (row["COMPANY_ID"], ""+article.find("h3").text, ""+article.find("div",{"class":"BNeawe UPmit AP7Wnd"}).text,""+article['href'].replace("/url?q=", ""))
                    mycursor.execute(sql, val)
                    connection.commit()
                    print (""+article.find("h3").text+" | "+article.find("div",{"class":"BNeawe UPmit AP7Wnd"}).text+" | "+article['href'])
        
        
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





# In[ ]:




