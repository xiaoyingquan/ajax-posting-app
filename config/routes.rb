Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
      post "collection" => "posts#collection"
      post "cancelcollection" => "posts#cancelcollection"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/jquery-1" => "pages#jquery_1"
  get "/jquery_2" => "pages#jquery_2"
  get "/jquery_3" => "pages#jquery_3"
  get "/jquery_4" => "pages#jquery_4"
  get "/jquery_5" => "pages#jquery_5"

  root "posts#index"
end
