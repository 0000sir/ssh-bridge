Rails.application.routes.draw do
  get 'hosts' => 'hosts#index'
  post 'hosts' => 'hosts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
