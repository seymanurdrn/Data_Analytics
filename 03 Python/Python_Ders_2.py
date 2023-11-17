class Animal:
    #property(özellikler)

    #methods(metodlar)
    pass

t1 = Animal()


class Animal:
    is_live = True

    def __init__(self, name):
        self.name = name.upper()

        def __del__(self)
            print("destructor called")

    def eat(self):
        print(self.name, "is eating")


class Dog(Animal):
    def bark(self):
        print(self.name, "is barking")


class Cat(Animal):
    def meow(self):
        print(self.name, "is meowing")


animal1 = Animal("hayvan")
animal1.is_live = False

print(animal1.name, animal1.is_live)

