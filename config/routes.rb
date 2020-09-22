Rails.application.routes.draw do
  resources :users
  resources :romantic_dates
  resources :activities
  

  get "/greeting", to: "welcomes#greeting"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
