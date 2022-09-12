Rails.application.routes.draw do
  resources :beers
  # get 'companies/index'
  # get 'companies/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/companies', to: 'companies#index', as: 'companies'
  get '/companies/:id', to: 'companies#show', as: 'company', constraints: { id: /\d+/ }
end
