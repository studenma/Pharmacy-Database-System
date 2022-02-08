class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  helper :all

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
    private
  
    def user_not_authorized
      flash[:alert] = "K této akci nemáte dostatečná oprávnění."
      redirect_to(request.referrer || root_path)
    end
end
