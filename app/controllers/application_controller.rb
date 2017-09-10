class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  before_action :require_login, :except=>[:new, :create]
  # :new = GET, :create = POST
  
  private def require_login
     unless current_user 
      redirect_to '/login'
    end 
  end
end
