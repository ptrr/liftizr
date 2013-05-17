Liftizr::Application.routes.draw do
  devise_for :lifters
  resources :exercises
end
