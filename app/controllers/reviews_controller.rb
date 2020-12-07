class ReviewsController < ApplicationController
    before_action :authenticate_user!

    before_action :set_review, only:[:show,:edit, :update, :destroy]

    def index
       @course = current_user.courses.find_by_id(params[:course_id])
       if @course
        @reviews = @course.reviews
       else
          @reviews = current_user.reviews
  
    end
end
    def show
    end

    def new
        @course = current_user.courses.find_by_id(params[:course_id])
        @student = Student.find_by_id(params[:id])
        if @course
            @review = @course.reviews.build
        elsif @student
            @review = @student.reviews.build
        else
        @review = Review.new
        end
end

def create
    @review = Review.new(review_params)
    if @review.save
        redirect_to review_path(@review)

    else
      render :new  
    end
end

    def edit

    end

    def update
        if @review.update(review_params)
           redirect_to review_path(@review)
       else
        render :edit
       end
    end

    def destroy
        @review.destroy
        redirect_to reviews_path
    end
private

def set_review
    @review = current_user.reviews.find(params[:id])   
end
def review_params
    params.require(:review).permit(:ratings,:comments,:course_id, :student_id)
end

end
