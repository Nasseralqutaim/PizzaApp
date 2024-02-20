Rails.application.routes.draw do
  #routes for pizzas:
  root 'welcome#index'
  get '/pizzas', to: 'pizzas#index', as: 'pizzas'
  get '/pizzas/new', to: 'pizzas#new', as: 'new_pizza'
  post '/pizzas', to: 'pizzas#create'
  get '/pizzas/:id', to: 'pizzas#show', as: 'pizza'
  get '/pizzas/:id/edit', to: 'pizzas#edit', as: 'edit_pizza'
  patch '/pizzas/:id', to: 'pizzas#update'
  put '/pizzas/:id', to: 'pizzas#update'
  delete '/pizzas/:id', to: 'pizzas#destroy'

  #routes for toppings:
  get '/toppings', to: 'toppings#index', as: 'toppings'
  get '/toppings/new', to: 'toppings#new', as: 'new_topping'
  post '/toppings', to: 'toppings#create'
  get '/toppings/:id', to: 'toppings#show', as: 'topping'
  get '/toppings/:id/edit', to: 'toppings#edit', as: 'edit_topping'
  patch '/toppings/:id', to: 'toppings#update'
  put '/toppings/:id', to: 'toppings#update'
  delete '/toppings/:id', to: 'toppings#destroy'
end
