class StudentsController < ApplicationController

    before_action :authenticate_user!
before_action :set_student, only:[:show,:edit, :update, :destroy]


private


def set_student
   @student = Student.find(params[:id])

end
def student_params
  params.require(:student).permit(:studen_name, :studentID)
end
end

