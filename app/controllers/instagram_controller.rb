class InstagramController < ApplicationController
  def feed
    @posts = current_client.user_media_feed({count: 100}).paginate(page: params[:page], per_page: 9)
  end
end
