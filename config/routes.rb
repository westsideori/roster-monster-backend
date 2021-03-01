Rails.application.routes.draw do
  resources :score_settings
  resources :watchlist_players
  resources :watchlists
  # resources :players
  resources :roster_players
  # resources :rosters
  resources :users

  post "/login", to: "users#login"
  get "/me", to: "users#me"

  get "/players", to: "players#player_season_data"
  get "/predictions", to: "players#player_daily_predictions"

  post '/rosters', to: "rosters#create"
  post '/roster_players', to: "roster_players#create"
  post '/score_settings', to: "score_settings#create"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
