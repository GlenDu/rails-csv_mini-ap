Rails.application.routes.draw do
  get 'parsers/new'
  resources :documents
  post 'parser', to: 'parser#col_select'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
