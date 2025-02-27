import mysql.connector

def print_user(user):

    config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "bikes_jp",
        "user": "root",
        "password": "AdM1df6nr24$$"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM clientes WHERE nombre = '" + user + "';"
    cursor.execute(query)

    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user('Isabel Ruiz')