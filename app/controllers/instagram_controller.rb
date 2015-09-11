class InstagramController < ApplicationController
  def feed
    @posts = current_client.user_media_feed({count: 100}).paginate(page: params[:page], per_page: 9)
  end

  def search
    if params[:search] == ""
      redirect_to feed_path
    else
      tags = current_client.tag_search(params[:search])
      redirect_to feed_path if !tags[0]
      @posts = current_client.tag_recent_media(tags[0].name).paginate(page: params[:page], per_page: 9)
    end
  end
end
