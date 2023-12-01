"""
#sınıf tanımlama
class Tekerlek:
    #property(özellikler)

    #metodlar
    pass
    
#clası çağırarak obje örneği oluşturma
t1 = Tekerlek()



class Animal:
    is_Live = True

    def __init__(self, name, age):
        self.name = name.upper()
        self.age = age

    def __del__(self):
       print("destructor called", self)

    def __add__(self,other):
        return self.age + " " + other.age
    
    def __str__(self):
        return "class Animal"

    def eat(self):
        print(self.name, "is eating")


class Dog(Animal):
    def bark(self):
        print(self.name, "is barking")

class Cat(Animal):
     def meow(self):
        print(self.name, "is meowing")

animal1 = Animal("hayvan", 3)
animal1.is_Live = False

animal2 = Animal("kedi", 2)

animal3 = animal1 + animal2

print(animal3)
print(animal1)
del animal1
print("End")
"""


class Person:
    def __init__(self, name, age):
        self.name = name.upper()
        if age < 0:
            raise ValueError("Age cannot be negative")
        elif age > 150:
            raise ValueError("Age cannot be greater than 150")
        else:
            self.age = age

    def say_hello(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")
    
  

class Employee(Person):
    def __init__(self, name, age, salary):
        Person.__init__(self, name, age)
        self.salary = salary

    def __say_hello__(self):
        print(f"Hello, my name is {self.name} and my salary is {self.salary} years old.")


employee1 = Employee("John", 25, 5000)
employee1.say_hello()


class Student(Person):
    def __init__(self, name, age, grade):
        Person.__init__(self, name, age)
        self.grade = grade


        

class WorkingStudent(Student, Employee, Person):
    def __init__(self, name, age, salary, grade):
        Person.__init__(self, name, age)
        Student.__init__(self, name, age, grade)
        Employee.__init__(self, name, age, salary)

    def say_hello(self):
        print(f"hello, my name is {self.name} and my salary is {self.salary} and my grade is {self.grade}.")  




ws1 = WorkingStudent("John", 25, 2000, 5)
ws1.say_hello() 













