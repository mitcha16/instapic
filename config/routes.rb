Rails.application.routes.draw do
  root "welcome#index"
  get '/logout', to: 'sessions#destroy'
  get '/auth/instagram/callback', to: 'sessions#create'
end
