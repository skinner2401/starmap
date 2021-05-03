Rails.application.routes.draw do
  resources :stargate_manual_overrides
  resources :stargates
  resources :north_stars
  resources :star_nodes
  resources :solar_systems
  resources :galaxies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
