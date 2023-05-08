Rails.application.routes.draw do
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/todays_games', to: 'hockey_games#index'
      get '/single_game_stats', to: 'hockey_games#show'
      post '/users', to: 'users#create'
      get '/users/:id', to: 'users#show'
      post '/users/:id/predictions', to: 'predictions#create'
      get '/users/:id/predictions', to: 'predictions#index'
      delete '/users/:user_id/predictions/:id', to: 'predictions#destroy'
      patch '/users/:user_id/predictions/:id', to: 'predictions#update'
    end
  end
end
