require "instagram"
Instagram.configure do |config|
  config.client_id = ENV['instagram_id']
  config.client_secret = ENV['instagram_secret_key']
end
