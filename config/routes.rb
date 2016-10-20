Rails.application.routes.draw do
  root 'bbs_pages#home'
  get  'help'    => 'bbs_pages#help'
  get  "bbsposts/create"
  post "create" => "bbsposts#create"

  resources :bbsposts,          only: [:create, :destroy]
end
