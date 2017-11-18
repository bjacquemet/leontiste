Rails.application.routes.draw do
  root to: 'post_cards#index'

  mount Lockup::Engine, at: '/lockup'

  localized do
    resources :post_cards,
      param: :slug
  end

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

end
