# Sample user database (you should use a proper database in a real application)
user_database = {
    "user1": "password1",
    "user2": "password2",
    "user3": "password3",
}

def login(username, password):
    if username in user_database and user_database[username] == password:
        return True
    else:
        return False

# Main program
while True:
    print("Welcome to the login system.")
    username = input("Enter your username: ")
    password = input("Enter your password: ")

    if login(username, password):
        print("Login successful! Welcome, " + username + "!")
        break
    else:
        print("Login failed. Please try again.")
