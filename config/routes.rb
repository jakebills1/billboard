Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charts do
    resources :songs
  end
  resources :artists do
    resources :songs
  end
  resources :playlists do
    resources :songs 
  end
end
