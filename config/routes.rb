Rails.application.routes.draw do
  resources :jokes
  get '/jokes/:id', to: 'jokes#show'
  get '/jokes', to: 'jokes#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :jokes, only: [:index, :show]
  resources :authors, only: [:index, :show] do
    resources :jokes, only: [:index]
  end
end
