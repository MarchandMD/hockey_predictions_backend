Rails.application.routes.draw do
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/todays_games', to: 'hockey_games#index'
      get '/single_game_stats', to: 'hockey_games#show'
      post '/users', to: 'users#create'
    end
  end
end
