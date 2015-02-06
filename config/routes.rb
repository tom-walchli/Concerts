Rails.application.routes.draw do

  get '/'         => 'gigs#home'
  # get '/sidebar'  => 'gigs#sidebar'
  get 'search'    => 'gigs#search'

  resources :gigs

end
