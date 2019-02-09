Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/shop'
  get 'restaurants/new'
  get 'restaurants/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Restaurants root -> index, show, new, create

  #Add new review to restaurant


    resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [ :new, :create ]
  end
end

