Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  post '/delete', to: 'home#delete_session'
  post '/:id', to: 'home#change_session'
end
