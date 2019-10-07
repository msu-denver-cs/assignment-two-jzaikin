Rails.application.routes.draw do
  resources :makes do
    collection do
      get 'search'
    end
  end
  resources :parts do
    collection do
      get 'search'
    end
  end
  resources :cars do
    collection do
      get 'search'
    end
  end
  resources :car_makes
  resources :car_parts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
