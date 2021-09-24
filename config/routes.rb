Rails.application.routes.draw do
  get 'agents', to: 'api/v1/agents#index', as: 'agents'
  match 'booking', to: 'api/v1/booking#create', via: [:post]
  match 'booking', to: 'api/v1/booking#destroy', via: [:delete]
  get 'scheduler', to: 'api/v1/scheduler#week', as: 'scheduler'
  get 'users', to: 'api/v1/users#index', as: 'users'
end
