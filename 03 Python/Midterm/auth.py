import json

users = [{
    'username': "ahmet",
    'password': "12345"
}]

class Auth:
    file_name = 'user.txt'

    def __init__(self):
        self.users = self.load_users() #kayıtlı kullanıcıları dosyadan yükler
        self.__username = None
        self.goals = [] #kullanıcının hedeflerini tutuyor, başlangıçta hedef olmadığı için liste boş.

    def load_users(self): #load_users fonksiyonu kullanıcı bilgilerini dosyadan yükler
        try:
            with open(self.file_name, 'r') as file: #dosya json modülü kullanarak okunur
                return json.load(file)
        except FileNotFoundError: #dosya bulunmazsa boş liste döndürür
            return []

    def save_users(self): #kullanıcı bilgilerini dosyaya kaydeder
        with open(self.file_name, 'w') as file: #dosyayı yazma modunda açar
            json.dump(self.users, file, indent=2) #kullanıcı bilgilerini file adlı dosyaya json formatında kaydeder. indent=2 parametresi json verisinin daha okunabilir olması için girinti ekler.

    @property
    def username(self):
        return self.__username

    @username.setter
    def username(self, value):
        print("Username is private.")

    def login_or_signup(self, username):
        username_index = -1
        for index, user in enumerate(self.users):
            if user["username"] == username:
                username_index = index

        if username_index > -1: # -1'den büyükse yani user kayıtlı ise login olmak için password giriyor, değilse signup olmak için password giriyor
            password = input("Enter your password to login: ")
        else:
            password = input("Enter your password to signup: ")

        if username_index > -1:
            if self.users[username_index]["password"] == password:
                self.__username = username
                print("Signup successful. Welcome, {}!".format(username))
            else:
                print("Please check your username and password")
        else:
            self.users.append({
                "username": username,
                "password": password
            })
            self.username = username

    def signout(self): #kullanıcı çıkış yaptığında none değerine sahip olacak oturumu kapatılacak
        self.__username = None


    def __del__(self): #auth sınıfının bir özelliği silindiğinde çalışır
        print("Auth instance deleted.") #ekrana yazdırır
        self.save_users() #bu metodu çağırarak kullanıcı bilgilerini dosyaya kaydeder

    def is_authenticated(self):
        return self.__username is not None #kullanıcının oturumunun açık olup olmadığını kontrol eder

    def get_goals(self): #hedefleri döndürür
        return self.goals

    def add_goal(self, description, priority): #kullanıcının yeni hedef eklemesini sağlar
        self.goals.append({"description": description, "priority": priority})

    def update_goal(self, index, description, priority): #mevcut hedefi günceller
        if 0 <= index < len(self.goals): #belirtilen hedefin indeksi geçerliyse mevcut hedefin bilgileri güncellenir
            self.goals[index] = {"description": description, "priority": priority}

    def delete_goal(self, index): #hedef silmek için
        if 0 <= index < len(self.goals):
            del self.goals[index]

