Rails.application.routes.draw do
  resources :journal_entries
  resources :questions
  resources :question_sets
  resources :journals
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
