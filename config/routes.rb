Rails.application.routes.draw do
  resources :reviews
  resources :courses do 
    resources :students, only:[:index]
    resources :reviews, only:[:index,:new]
  end
  root 'courses#index'#devise require a root route
  # resources :courses
  
  devise_for :users ,controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
