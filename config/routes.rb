Rails.application.routes.draw do

  devise_for :users
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  resources :posts do
    get 'hobby'
    get 'study'
    get 'team'
  end
end
