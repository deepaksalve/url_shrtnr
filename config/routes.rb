Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :short_urls, only: [:index, :create]
  get "/:short_url", to: "short_urls#show"

  root 'short_urls#index'
end
