class CoursesController < ApplicationController
    before_action :authenticate_user!
    def index
        @courses = current_user.courses
    end
   def show 
   end
end
