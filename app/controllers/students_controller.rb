class StudentsController < ApplicationController

before_action :authenticate_user!
before_action :set_student, only:[:show,:edit, :update, :destroy]


def index
    @course = current_user.courses.find_by_id(params[:course_id])
   if @course
    @students = @course.students.all
   else

    @students = Student.all
   end
end
def show
end

def new
   @student = Student.new
end
def create

@student =Student.new(student_params)
if @student.save
    redirect_to student_path(@student) 
else

    render :new
end 

def create
    @student = Student.new(student_params)
    if @student.save
        redirect_to student_path(@student)
    else
        render :new
    end
end
end

private


def set_student
   @student = Student.find(params[:id])

end
def student_params
  params.require(:student).permit(:student_name, :studentID)
end
end

