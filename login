//registration
import re

def validate_user_id(user_id):
  pattern = r'^[A-Z]{3}[0-9]{7}$'
  return bool(re.match(pattern, user_id))

def validate_password(password):
  pattern = r'^(?=.*[A-Z])(?=.*[@$!%?&]).{8,}$'
  return bool(re.match(pattern, password))

def register():
  user_id = input("Enter your user id: ")
  if validate_user_id(user_id):
    password = input("Enter your password: ")
    if validate_password(password):
      print("Registration successful")
    else:
      print("Registration failed. Password format is incorrect.")
  else:
    print("Registration failed. Voter id format is incorrect.")
register()

//login

import re

def validate_user_id(user_id):
  pattern = r'^[A-Z]{3}[0-9]{7}$'
  return bool(re.match(pattern, user_id))

def validate_password(password):
  pattern = r'^(?=.*[A-Z])(?=.*[@$!%?&]).{8,}$'
  return bool(re.match(pattern, password))

def validate_username(username):
  pattern = r'^(?=.*[A-Z])(?=.*[0-9]).{2,}$'
  return bool(re.match(pattern, username))

def login():
  username = input("Enter your username: ")
  if validate_username(username):
    password = input("Enter your password: ")
    if validate_password(password):
      print("Login successful")
    else:
      print("Login failed. Password format is incorrect.")
  else:
    print("Login failed. Username format is incorrect.")
login()


