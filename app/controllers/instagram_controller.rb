class InstagramController < ApplicationController
  def like
    current_client.like_media("#{params[:id]}")
    redirect_to dashboard_path
  end
end
