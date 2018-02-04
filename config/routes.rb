Rails.application.routes.draw do
  
  
  resources :users
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

resources :posts do
  resources :comments
end

end
