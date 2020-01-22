Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get  '/show',    to: 'redis#show'

  resource :redis, only: [:show]
end
