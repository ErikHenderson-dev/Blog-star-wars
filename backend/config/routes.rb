Rails.application.routes.draw do
  scope ENV['BASE_HREF'] do
    resources :posts, only: %i[index show]
  end
end
