
Rails.application.routes.draw do
	resources :gossip
  get 'author/:id', to: 'author#page', as: "author"
  get 'gossip/:id', to: 'gossip#show'
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'static_pages/welcome'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/', to: 'static_pages#welcome', as: "welcome"
  get 'welcome/:first_name', to: 'static_pages#welcome'
end
