from fileio import FileIO, FileCSV
from auth import Auth
from library import Library

auth = Auth()

library = Library()

while True:
    try:
        if auth.username is None:
            user_input = input("Enter your username or 'exit': ") #kullanıcıdan giriş yapmasını istiyoruz
        else:
            user_input = input(f"{auth.username}: ") #giriş yaptıysa gerekli komutları girmesini istiyoruz


        if user_input == "exit":
            break #bir üstteki döngüyü kırar
        elif user_input == 'signout':
            auth.signout()
        elif user_input == 'popular':
            library.popular_books()
        elif user_input == 'get':
            library.get_book()
        elif user_input == 'return':
            library.return_book()
        else:
            auth.login_or_signup(user_input)

    except Exception as e:
        print(e)
        print("Error occurred please try again")
    else:
        print("Successful")
    finally:
        print("End")
