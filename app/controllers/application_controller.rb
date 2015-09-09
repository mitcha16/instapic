class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :current_client

  def current_user
    @current_user ||= current_client.user if current_client
  end

  def current_client
    if session[:user_id]
      user = User.find(session[:user_id])
      @current_client ||= Instagram.client(access_token: user.token)
    end
  end

  def authorize!
    redirect_to root_path unless current_user
  end
end
