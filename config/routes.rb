Rails.application.routes.draw do
  devise_for :users
  
  
  resources :links do
    member do
      put "Like",     to: "links#upvote"
      put "dislike",  to: "links#downvote"
    end
  end
  
  root "links#index"
  

end
