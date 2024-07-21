Rails.application.routes.draw do
  resources :fluid_intakes, except: [:show]
  resources :food_intakes, except: [:show]

  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
end
