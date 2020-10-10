Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #ログインページを作成
  resources :users, only: [:index]
  root 'users#index'
  
  
  
  #私の人生投稿ページを作成
  resources :mylives
  

  #私の財産投稿ページを作成
  resources :properties

  #お願いページを作成
  resources :requests

  #個別メッセージページを作成
  resources :messages
  
end
