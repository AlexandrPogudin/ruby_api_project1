Rails.application.routes.draw do
  # Пространство имен для API
  namespace :api do
    # Версионирование API (версия 1)
    namespace :v1 do
      # Команда resources автоматически создает все RESTful маршруты:
      # index, show, create, update, destroy
      resources :companies
      resources :jobs
      resources :geeks
      resources :applies
    end
  end
end