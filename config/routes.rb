Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'jobs_at_teamtailor/index'
  resources :jobs_at_teamtailor
  root 'jobs_at_teamtailor#index'

  get 'jobs_at_teamtailor/:id' => 'jobs_at_teamtailor#show'
end
