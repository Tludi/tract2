class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end  
  
  protected
    def not_authenticated
      redirect_to root_path, :alert => "Please login first."
    end

end
