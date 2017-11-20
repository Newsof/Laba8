Rails.application.routes.draw do
  root 'armstrong#input'
  get '/input' => 'armstrong#input'
  match '/view' => 'armstrong#view', via: %i(get post)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
