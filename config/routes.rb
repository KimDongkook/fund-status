Rails.application.routes.draw do

  # get 'admin/status'
  get 'welcome/index'

  # resources :articles
  resources :fundraises
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
