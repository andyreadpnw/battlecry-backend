Rails.application.routes.draw do
      resources :games
      resources :game_players
      resources :players
      resources :units
end
