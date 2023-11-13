Rails.application.routes.draw do

  root 'static_pages#top'

  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks"
  }
  devise_scope :users do
    get "/users", to: redirect("/users/sign_up")
  end
end
