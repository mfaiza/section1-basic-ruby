users = [
    { username: "admin", password: "admin1"},
    { username: "faiz", password: "faiz1"},
    { username: "admin2", password: "admin2"},
]

# authentication method to check and verify if username/password combination 
def authUser(username, password,listOfUser)
    listOfUser.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "Username and password is not match!"
end

# program execution flow
puts "Welcome to the Authenticator"
25.times { print "-" }
puts
puts "Semacam program login"
puts "Jika password benar, anda akan mendapatkan informasi terkait user"

attemps = 1
while attemps <= 3

    puts "Username : "
    username = gets.chomp
    puts "Password : "
    password = gets.chomp

    authentication = authUser(username, password, users)
    puts authentication

    puts "Tekan n untuk keluar atau kunci lain untuk melanjutkan"
    input = gets.chomp.downcase 
    # if input == "n"
    #     break
    # end
    break if input == "n" #simple way
    attemps += 1
end
puts "Anda telah mencoba lebih dari 3x, Silahkan coba lain waktu :)" if attemps > 3
