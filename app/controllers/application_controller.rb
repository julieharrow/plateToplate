class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :zip_code, :my_story, :happy_to_host, :happy_to_travel, :avatar, :longitude, :latitude, :ip_address, interests_attributes: [:id, :user_id, :cuisine_id, :learn, :teach, :done, :_destroy]])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :zip_code, :my_story, :happy_to_host, :happy_to_travel, :avatar, :longitude, :latitude, :ip_address, interests_attributes: [:id, :user_id, :cuisine_id, :learn, :teach, :done, :_destroy]])
  end

end
