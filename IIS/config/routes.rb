Rails.application.routes.draw do
  
  devise_for :users, :path => 'u', :controllers => { :registrations => "user/registrations" }
  resources :users
  resources :reservations do
    delete 'processReservation/:id' => 'reservations#processReservation', as: :processReservation
  end
  resources :suppliers
  resources :insurers
  resources :drugs
  resources :branches
  resources :sales
  resources :orders do
    post 'processOrder/:id' => 'orders#processOrder', as: :processOrder
    post 'deprocessOrder/:id' => 'orders#deprocessOrder', as: :deprocessOrder
  end
  
  root to: redirect('/drugs')
end
