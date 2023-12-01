# input: 123 *** 50
# print average: 45

# s = [{'no':1, 'name':"Ali", 'grades':[{'rate':3, 'grade':50},{{'rate':1, 'grade':70}}]}, {'no':2, 'name':"Ahmet", 'grades':[{'rate':3, 'grade':50}]}]
students = []


def find_student(no):
    for index, student in enumerate(students):
        if student['no'] == no:
            return index
    return None
 
def grades_avarage(grades):
    sum = 0
    sum_rate = 0
    for grade in grades:
        sum += grade['rate']*grade['grade']
        sum_rate += grade['rate']
    return sum/sum_rate



def add_grade(commands):
    index = find_student(int(commands[0]))
    if index is None:
       name = input("Please enter name: ") 
       rate = len(commands[1])
       students.append({'no':int(commands[0]), 'name':name, 'grades':[{'rate':rate, 'grade':int(commands[2])}]})
    else:
        students[index]['grades'].append({'rate':len(commands[1]), 'grade':int(commands[2])}) 
        print(grades_avarage(students[index]['grades']))


while True:
    try:
        command_text = input("Please enter grade '123 ** 50': ") #"321 *** 40"
        if command_text == "exit":
            break
        commands = command_text.split() #["321", "**", "40"]
        add_grade(commands)
    except Exception as e:
        print(e)
        print("Invalid input")
    finally:
        print("done")


