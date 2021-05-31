Rails.application.routes.draw do
  resources :hotel_bookings
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/signup'
  
  get 'home/index'
  root to: 'home#index'
  get 'hotels/show_list'
  get 'profile/user'
  get 'bookings/show_bookings'
  get 'bookings/insert_booking'
  get 'bookings/booking_success'

  namespace :api do
    namespace :v1 do
      resources :hotels
    end  
  end
  
end
