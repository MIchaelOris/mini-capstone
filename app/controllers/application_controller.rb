class ApplicationController < ActionController::API
  include Knock::Authenticable

  def authenticate_admin
      unless current_user && current_user.admin 
        render json: {message: "You are not unauthorized"}, status: :unathorized
    end
  end 
end