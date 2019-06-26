Rails.application.routes.draw do
post '/webhook' => 'webhooks#webhook'
get '/show' => 'webhooks#show'
get '/hello_world' => 'application#hello_world'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
