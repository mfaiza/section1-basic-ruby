require_relative 'hashing'

class Student
    
    include Crud
    attr_accessor :first_name, :last_name, :username, :email, :password

    def initialize(first_name, last_name, username, email, password)
        @firstname = first_name
        @lastname = last_name
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{@firstname}, Last Name: #{@lastname}, Username: #{username}, Email: #{email}"
    end
    
end

faiz = Student.new("faiz", "alamsyah", "mfaiza", "mfaiza@example.com", "mfaiza1")

new_faiz = faiz.create_password_hash(faiz.password)

puts new_faiz