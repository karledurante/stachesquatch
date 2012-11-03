Stachesquatch::Application.routes.draw do
  resources :goals do
    collection do
      get :edit
      post :update
      get :sms
    end

  end

  root :to => 'home#index'
end
