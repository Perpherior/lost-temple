Rails.application.routes.draw do
  mount ApiClient, at: '/api'

  root to: 'ui#index'

  get '/*path', to: 'ui#index'
end
