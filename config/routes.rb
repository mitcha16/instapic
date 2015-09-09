Rails.application.routes.draw do
  root "welcome#index"
  get '/logout', to: 'sessions#destroy'
  get '/auth/instagram/callback', to: 'sessions#create'
  get '/dashboard', to: "users#show"
  get '/like/:id', to: "instagram#like"
end
