# require 'module'
require_relative 'hashing'

users = [
    {username: "faiz", password: "faiz1"},
    {username: "alam", password: "alam1"},
    {username: "syah", password: "syah1"},
    {username: "arizu", password: "arizu1"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users