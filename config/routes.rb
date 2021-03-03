Rails.application.routes.draw do
  # resources :score_settings
  # resources :watchlist_players
  # resources :watchlists
  # # resources :players
  # resources :roster_players
  # # resources :rosters
  # resources :users

  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/me", to: "users#show"
  get '/users/:id/rosters', to: "users#rosters"

  get "/players", to: "players#player_season_data"
  get "/predictions", to: "players#player_daily_predictions"

  post '/rosters', to: "rosters#create"
  patch '/rosters/:id', to: "rosters#update"
  delete '/rosters/:id', to: "rosters#destroy"
  post '/roster_players', to: "roster_players#create"
  post '/score_settings', to: "score_settings#create"

  get '/users/:id/rosters/:rostid', to: "rosters#show"
  # get '/rosters/:id', to: "rosters#show"
  delete '/roster_players/:id', to: "roster_players#destroy"

  get '/users/:id/watchlist', to: "watchlists#show"
  post '/watchlist_players', to: "watchlist_players#create"
  delete '/watchlist_players/:id', to: "watchlist_players#destroy"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
