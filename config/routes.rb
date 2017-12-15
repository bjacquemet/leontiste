Rails.application.routes.draw do
  root to: 'post_cards#index'

  mount Lockup::Engine, at: '/lockup'

  localized do
    resources :post_cards,
      param: :slug
  end

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get '/change_identity/', to: 'settings#change_identity', as: :change_identity

end
