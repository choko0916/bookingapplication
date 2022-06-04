Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root to: 'home#index'

  get 'room_registrations/search', to: 'room_registrations#search'
  get 'room_registrations/search_free_word', to: 'room_registrations#search_free_word'
  get 'room_registrations/post', to: 'room_registrations#post'

  post 'room_bookings/confirm', to: 'room_bookings#confirm' # 確認画面
  post 'room_bookings/back', to: 'room_bookings#back'  # 確認画面から「入力画面に戻る」をクリックしたとき

  resources :room_registrations
  resources :room_bookings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
