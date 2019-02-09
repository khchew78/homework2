Rails.application.routes.draw do
  resources :orders do
    collection do
      post :create_order_items
    end
  end
  resources :customers
  resources :orderings, only: [ :index ]
  resources :categories
  resources :menus
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
