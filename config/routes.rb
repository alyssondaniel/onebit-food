Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope "/api", defaults: {format: :json} do
    resource :categories, only: [:index]
    resource :restaurants, only: [:index, :show]
    resource :orders, only: [:create, :show]
    resource :available_cities, only: [:index]
  end
end
