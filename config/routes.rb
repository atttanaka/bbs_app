Rails.application.routes.draw do
  root 'bbs_pages#home'
  get  'help'    => 'bbs_pages#help'
  get  "bbsposts/create"
  get  "bbsposts/new"
  post "bbsposts" => "bbsposts#create"

  resources :bbsposts
end
