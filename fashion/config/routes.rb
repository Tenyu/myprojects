Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  get  'tweets'           => 'tweets#index'
  get  '/tweets/new'      => 'tweets#new'
  post 'tweets'           => 'tweets#create'
  get  '/entry/:id'       => 'tweets#entry'
  post '/entry/:tweet_id' => 'tweets#post'
  get  '/users/:id'       => 'users#show'
  resources :tweets
end
