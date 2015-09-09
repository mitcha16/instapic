class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth(oauth_data)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def oauth_data
    request.env['omniauth.auth']
  end
end
