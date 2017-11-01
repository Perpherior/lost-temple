Rails.application.routes.draw do
  root to: 'ui#index'

  get '/*path', to: 'ui#index'
end
