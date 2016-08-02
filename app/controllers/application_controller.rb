class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :location, :my_story, :i_can_teach_you, :i_want_to_learn, :happy_to_host, :happy_to_travel, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :location, :my_story, :i_can_teach_you, :i_want_to_learn, :happy_to_host, :happy_to_travel, :avatar])
  end
end
