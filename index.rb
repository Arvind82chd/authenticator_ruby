# Fake Data:
users = [
    {username: "a", password: "pwd"},
    {username: "b", password: "pwd1"},
    {username: "c", password: "pwd2"},
    {username: "d", password: "000"},
    {username: "e", password: "111"}
]

def authenticate(username, password, users)
    users.each do |user|
        if username == user[:username] && password == user[:password]
            puts "Welcome #{user[:username]} you have successfully loged in"
            return user
        end
    end
    "invalid username or password"
end

puts "Welcome to Authenticator app:"
25.times {print "-"}
puts
puts "This program will take input from the user and compare the password for authentication."
puts "If password is correct, you will get back the user object."

puts "Enter your Username:"
u = gets.chomp
puts "Enter your password:"
p = gets.chomp
puts authenticate(u, p, users)