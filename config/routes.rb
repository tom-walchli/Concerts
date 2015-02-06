Rails.application.routes.draw do

  get '/'   => 'gigs#index'

  resources :gigs

end
