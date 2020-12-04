class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def record_not_found
        #render plain:"404 Not Found"#, status: 404
         #redirect_to root_path
       flash[:message] = "404 Not Found"
       redirect_to root_path
       



    end
    protected


def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:phone_number])
end 
end
