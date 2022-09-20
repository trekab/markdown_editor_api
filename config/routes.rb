Rails.application.routes.draw do
  # API definition
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :markdown_files, only: %i[show create update destroy]
    end
  end
end
