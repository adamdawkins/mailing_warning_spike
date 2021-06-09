Rails.application.routes.draw do
  resources :clients do
    resources :mailings
    resources :invoices
  end

  root to: "clients#index"
end
