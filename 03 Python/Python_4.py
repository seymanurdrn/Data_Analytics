"""
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y        
    def __add__(self, other):
        x = self.x + other.x
        y = self.y + other.y
        return Point(x, y)
    
    def midpoint(self, other):
        x = (self.x + other.x) / 2
        y = (self.y + other.y) / 2        
        return Point(x, y)
    
    def __str__(self):
        return f"({self.x}, {self.y})"

    

p1 = Point(1, 2)
p2 = Point(3, 4)

p3 = p1 + p2

print(p3.x, p3.y)

p4 = p1.midpoint(p3)

print(p4)
"""

""""
class Fruit:
    def __init__(self, name, color, price):
        self.name = name
        self.color = color
        self.price = price


    def __str__(self):
        return f"{self.name} is {self.color} and {self.price}"



fruits = [
    Fruit("Orange", "orange", 3),
    Fruit("Pear", "green", 1),
    Fruit("Banana", "yellow", 2)
]

def new_f (x):
    return x.price

for fruit in sorted(fruits, key=lambda x:x.price , reserve=True):
    print(fruit)
"""


#DECORATORS (mevcut fonksiyonu clası dönüştürüp yeni bir özellik ekliyebiliyor)
""""
import time
def processing_time(f):
    def yeni_f(*args, **kwargs):
        start = time.time()
        sonuc = f(*args, **kwargs)
        end = time.time()
        print("İşlem süresi:", end - start)
        return sonuc
    return yeni_f


def guncelle(f):
    def yeni_f(*args, **kwargs):
        print("Guncelleme islemi yapiliyor...")
        return f(*args, **kwargs)
    return yeni_f 

@processing_time
@guncelle
def f(x):
    return x*x

@processing_time
@guncelle
def g(x):
    return x*x*x


print(f(3))

print(g(4))
"""

#ENCAPSULATİON

class Person:
    _is_Live = "Live"

    def __init__(self, name, age):
        self.name = name
        self.age = age

    @property
    def is_Live(self):
        return self._is_Live
    
    @is_Live.setter
    def is_Live(self, value):
        if value == "dead":
            return
        self._is_Live = value

        def __str__ (self):
            return f"Name: {self.name}, Age: {self.age}"
        
        class Student(Person):
            def __init__ (self, name, age, grade):
                Person.__init__(self, name, age)
                self.grade = grade
                self._name = "Student"


            def __str__(self):
                return f"Name: {self.name}, Age: {self.age}, Grade: {self.grade}"
        

        p = Person("John", 25)

        print(p.is_Live)

        p.is_Live = "dead"
        print(p.is_Live)

        p.is_Live = "living"
        print(p.is_Live)
        


