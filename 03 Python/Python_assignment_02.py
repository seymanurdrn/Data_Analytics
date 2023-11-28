#1
class Employee:
    def __init__(self, name, salary):
        self.name = name
        self.salary = salary
   
    def calculate_bonus(self):
        return self.salary * 0.05

    def __str__(self):
                return f"Name: {self.name}, Salary: {self.salary},"
    


class Manager(Employee):
    def __init__(self, name, salary, department):
       super().__init__(name, salary)
       self.department = department
   
    def calculate_bonus(self):
        return self.salary * 0.15

    def __str__(self):
                return f"Name: {self.name}, Salary: {self.salary}, Department: {self.department},"
        


class Developer(Employee):
    def __init__(self, name, salary, programming_language):
        super().__init__(name, salary)
        self.programming_language = programming_language
   
    def calculate_bonus(self):
        return self.salary * 0.10

    def __str__(self):
                return f"Name: {self.name}, Salary: {self.salary}, Programming Language: {self.programming_language},"
            
              
employee = Employee("Cenk Başaran", 20000)
manager = Manager("Duru Özdemir", 100000, "IT")
developer = Developer("Ahmet Çınar", 80000, "Python")

print(employee, "Bonus:", employee.calculate_bonus())
print(manager, "Bonus:", manager.calculate_bonus())
print(developer, "Bonus:", developer.calculate_bonus())





#2
class Car:
    def __init__(self, make, model, yearOfProduction, speed):
        self.make = make
        self.model = model
        self.yearOfProduction = yearOfProduction
        self.speed = speed

    @property
    def speed(self):
          return self._speed
    
    @speed.setter
    def speed(self, value):
        if value < 0:
            raise ValueError("Speed value cannot be negative")
        else:
            self._speed = value

    def __str__(self):
                return f"Make: {self.make}, Model: {self.model}, Year Of Production: {self.yearOfProduction}, Speed: {self.speed}"

c1 = Car("Peugeot", "1.2 PureTech Allure ", 2020, 200)
c2 = Car("Volkswagen", "1.0 TSI Life ", 2022, 220)
         
print(c1)
print(c2)   