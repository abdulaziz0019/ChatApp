Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
    get 'chatroom',to: 'chatroom#index'
    get 'login', to: 'session#new'
    post 'login', to: 'session#create'
    delete 'logout' ,to: 'session#destroy'
    post 'message', to: 'message#create'
    resources 'user', except: [:new]
    mount ActionCable, at: "/cable"




end
