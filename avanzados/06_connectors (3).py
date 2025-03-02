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

    query = "SELECT * FROM clientes WHERE nombre LIKE %s" # %s is the placeholder
    cursor.execute(query, (user + "%",)) # pass the value as a tuple

    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user('Isabel') 
#esta es la forma correcta de hacerlo, ya que se evita la inyeccion de codigo SQL