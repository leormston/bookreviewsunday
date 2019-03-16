Rails.application.routes.draw do
  root 'home#index'
  post 'review/show'
  get 'review/show'
  post 'review/publish'
  get 'review/publish'
  post 'review/upvote'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
