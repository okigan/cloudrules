#!/usr/bin/env python 

import mysql.connector

# Connect to server
cnx = mysql.connector.connect(
    host="127.0.0.1",
    port=3306,
    user="root",
    password="MYS1qaz2wsx3edc$")


# Get a cursor
cur = cnx.cursor()

# Execute a query
cur.callproc("rulez.spFindRuleMatches")

for result in cur.stored_results():
   print(result.column_names)
   print(result.fetchall())

# Close connection
cnx.close()




