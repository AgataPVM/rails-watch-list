Rails.application.routes.draw do
  root "lists#index"

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]   # aninhadas (não têm :id)
  end

  resources :bookmarks, only: :destroy           # não aninhada, tem :id
end
