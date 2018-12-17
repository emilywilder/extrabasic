Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  post 'authenticate', to: 'authentication#authenticate'
  root 'welcome#index'
end
