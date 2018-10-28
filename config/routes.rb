Rails.application.routes.draw do
  resources :sections
  resources :semesters
  devise_for :users
  devise_for :models
  resources :students do
    collection do
      get 'search'
    end
  end
  resources :sections do
    collection do
      get 'search'
    end
  end
  resources :courses do
    collection do
      get 'search'
    end
  end
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
