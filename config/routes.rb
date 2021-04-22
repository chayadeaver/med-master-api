Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dosages
      resources :side_effects
      resources :users
      resources :medicines
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
