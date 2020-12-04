class CoursesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_course, only:[:show,:edit, :update, :destroy]
    def index
        @courses = current_user.courses
    end
   def show 
    set_course
   end
 def new
 end
 def create
 end
 def edit
end
def update
end
   private
def set_course
    @course = current_user.courses.find(params[:id]) 
end

end
