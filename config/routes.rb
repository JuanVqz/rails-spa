Rails.application.routes.draw do
  scope :api do
    resources :categories
    post 'authenticate', to: 'authentication#authenticate'
  end
end
