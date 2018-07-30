Rails.application.routes.draw do
  root 'pages#index'
  get 'profils' => 'pages#profils'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
