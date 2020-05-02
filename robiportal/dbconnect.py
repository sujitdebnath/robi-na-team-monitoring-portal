import mysql.connector

def connection():
    conn = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='robi_portal')
    
    return conn
