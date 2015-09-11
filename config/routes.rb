Rails.application.routes.draw do
  root "welcome#index"
  get '/logout', to: 'sessions#destroy'
  get '/auth/instagram/callback', to: 'sessions#create'
  get '/dashboard', to: "users#show"
  get '/feed', to: "instagram#feed"
  get '/search', to: "instagram#search"
  get '/trending', to: "instagram#trend"
end
