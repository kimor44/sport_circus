Rails.application.routes.draw do
  resources :troops
  resources :categories
  resources :abouts
  resources :infos
  resources :date_shows
  get 'sport_shows/index'
  get 'admin/index'
  resources :sport_shows
  get '/admin/sport_shows', to: 'sport_shows#index'
  namespace :admin do
    root "admin#index"
    resources :sport_shows, as: 'admin_sport_shows'
  end
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
