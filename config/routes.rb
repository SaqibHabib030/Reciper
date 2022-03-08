Rails.application.routes.draw do
  resources :ingredients
  root 'recipies#index'
 
  resources :recipies do
    collection { post :import }
  end
end
