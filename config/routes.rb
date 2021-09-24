Rails.application.routes.draw do
  get 'users', to: 'api/v1/users#index', as: 'users'
end
