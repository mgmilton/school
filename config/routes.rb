Rails.application.routes.draw do
  resources :students do
    resources :addresses, only: [:index, :show, :new, :create]
  end
  resources :courses, only: :show
end
