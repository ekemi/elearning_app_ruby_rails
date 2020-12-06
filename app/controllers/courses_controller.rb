class CoursesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_course, only:[:show,:edit, :update, :destroy]
    def index
        @courses = current_user.courses
    end
   def show 
   end
 def new
    @course = Course.new
 end
 def create

    @course =current_user.courses.build(course_params)
    if @course.save
        redirect_to course_path(@course) 
    else

        render :new
    end 
 end
 def edit
end

def update
    if @course.update(course_params)
        redirect_to course_path(@course)
    else
     render :edit
    end
end

def destroy
    @course.destroy
    redirect_to courses_path
end
   private

def set_course
    @course = current_user.courses.find(params[:id]) 
end
def course_params#strong_params
    params.require(:course).permit(:course_name,:profesor_name, :course_length, :number_videos)
end

end
