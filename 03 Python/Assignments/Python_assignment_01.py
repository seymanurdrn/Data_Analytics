class Student:
        def __init__(self, StudentName, GradeLevel, Gender, GPA):
            self.StudentName = StudentName
            self.GradeLevel = GradeLevel
            self.Gender = Gender
            self.GPA = GPA
        def __showinfo__(self):
            print(f"Student Name:{self.StudentName}")           
            print(f"{'Grade Level':<12}:{self.GradeLevel}")
            print(f"{'Gender':<12}:{self.Gender}")
            print(f"{'GPA':<12}: {self.GPA}")
            print(f"\n")
#object (instance)
s1 = Student(StudentName=" Şeyma Nur", GradeLevel=" University", Gender=" Female", GPA= 3.40)
s2 = Student(StudentName=" Oğuz", GradeLevel=" Doctoral", Gender=" Male", GPA= 2.60)
s3 = Student(StudentName=" Aslı", GradeLevel=" High", Gender=" Female", GPA= 3.90)
s4 = Student(StudentName=" Mustafa", GradeLevel=" Doctoral", Gender=" Male", GPA= 2.00)
s5 = Student(StudentName=" Amine", GradeLevel=" University", Gender=" Female", GPA= 2.50)
s6 = Student(StudentName=" Mehmet", GradeLevel=" High", Gender=" Male", GPA= 3.10)
s7 = Student(StudentName=" Semih", GradeLevel=" University", Gender=" Male", GPA= 3.80)

s1.__showinfo__()
s2.__showinfo__()
s3.__showinfo__()
s4.__showinfo__()
s5.__showinfo__()
s6.__showinfo__()
s7.__showinfo__()















