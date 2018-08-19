Rails.application.routes.draw do
  resources :posts

  devise_for :users


authenticated :admin,    lambda { |u| u.has_role? :admin } do
  root :to => 'posts#index', :as => :admin_root
end

authenticated :operator, lambda { |u| u.has_role? :user } do
  root :to => 'home#index', :as => :user_root
end


end
