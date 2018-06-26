Rails.application.routes.draw do
  root 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'sessions/:id' => 'sessions#destroy'

  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'

  get 'songs' => 'songs#index'
  post 'songs' => 'songs#create'
  get 'songs/:id' => 'songs#show'

  post 'playlists/:id' => 'playlists#create'

end
