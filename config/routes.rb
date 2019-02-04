Rails.application.routes.draw do
  get 'static_pages/team'
  get 'static_pages/contact'
  get 'static_pages/welcome'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get '/', to: 'static_pages#welcome'
  get 'welcome/:first_name', to: 'static_pages#welcome'
end
