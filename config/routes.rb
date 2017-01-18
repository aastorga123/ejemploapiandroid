Rails.application.routes.draw do

  namespace :api, defualts: {format: 'json'} do
    resources :androidversions
  end
end
