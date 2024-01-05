from fileio import FileIO
import json

users = [{
    'username': "ahmet",
    'password': "12345"
}]


class Auth:
    file_name = 'user.txt' #userlarımızın bilgilerini bi dosyada tutuyoruz

    def __init__(self):
        self.users = json.loads(FileIO(self.file_name).read())
        self.__username = None
        print(self.users)
    
    @property
    def username(self):
        return self.__username
    
    @username.setter
    def username(self, value):
        print("username is private")

    
    def login_or_signup(self, username): #usernameyi alıyoruz
        username_index = -1
        for index, user in enumerate(self.users):
            if user["username"] == username: #username listemizde varsa variablenin içine indeksini yazıyoruz, değilse -1
                username_index = index
        
        if username_index > -1: #-1'den büyükse yani user bulduysak login olmak için password giriyor, değilse signup olmak için password giriyor
            password = input("Enter your password to login: ")
        else:
            password = input("Enter your password to signup: ") 

        if username_index > -1: #tekrar gelen passworda göre öyle bi user varsa passwordü chech ediyor, ve onu login user olarak yazıyor 
            if self.users[username_index]["password"] == password:
                self.__username = username
            else:
                print("Please check your username and password") #değilse chech etmesi için uyarı veriyor
        else:
            self.users.append({ #user index -1den büyükse signup olacak passwordü bi şeyle check etmemize gerek yok direkt user listemize ekliyoruz
                "username": username,
                "password": password
            })
            self.username = username

    def signout(self): #bu metod çağırılınca mevcur username'den logini iptal edecek 
        self.__username = None

    def __del__(self):
        print("delete Auth")
        json_users = json.dumps(self.users)
        FileIO(self.file_name).write(json_users)
#yazılımdan çıkarken bundan oluşturulmuş instance'ler del edilirken daha del edilmeden otomatik yapılması gereken işlemleri yapar. Mesela yeni kullanıcılar eklendiyse onları json string formatına döndürür, güncel user listesine txt içine yazar.
        
#try except (else finally) hatayı yakalamak için