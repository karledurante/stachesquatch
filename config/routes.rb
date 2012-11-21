Stachesquatch::Application.routes.draw do
  resources :goals do
    collection do
      get :edit
      post :update
      get :sms
      get :approved
      post :approved
    end

  end

  match '/goal' => 'goals#show'

  root :to => 'home#index'
end
