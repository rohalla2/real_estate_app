class ApplicationController < ActionController::Base
  before_action :find_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  	def find_user
  		if session[:user_id] != nil
  			@user = User.find_by(id: session[:user_id])
  		else
  			@user = nil
  		end
  	end

    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to properties_url, notice: "You need to log in to access this feature!"
      end
    end

     #Restrict only allowing Manager's can create new properties
  def check_if_manager
    if (!@user) || (@user && @user.user_type != "Manager") #if user is not logged in, or a logged in user is not a manager
      redirect_to properties_path, notice: "Only Managers are authorized to perform this function" 
    end
  end

end
