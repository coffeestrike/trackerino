Rails.application.routes.draw do
  resources :fluid_intakes, except: [:index, :show]
  resources :food_intakes, except: [:index, :show]

  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
end
