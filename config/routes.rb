Rails.application.routes.draw do
  root 'bbs_pages#home'
  get 'help'    => 'bbs_pages#help'
end
