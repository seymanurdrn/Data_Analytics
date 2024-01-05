import getpass

users = [{
    'username': "ahmet",
    'password': "12345"
}]


class Auth:
    file_name = 'user_1.txt' #userlarımızın bilgilerini bi dosyada tutuyoruz


'''
#kullanıcı, kullanıcı adı ve şifresini girdiği vakit login olsun
while True:
    user_input = input("Enter your username or 'exit': ")
    if user_input == "exit":
        break

    is_exist = auth.enter_user(user_input)

    if is_exist:
        input_msg = "Enter your password to login: "
    else:
        input_msg = "Enter your password to signup: "

    password = input(input_msg)
    '''