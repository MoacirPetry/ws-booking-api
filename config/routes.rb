Rails.application.routes.draw do
  get 'agents', to: 'api/v1/agents#index', as: 'agents'
  get 'users', to: 'api/v1/users#index', as: 'users'
end
