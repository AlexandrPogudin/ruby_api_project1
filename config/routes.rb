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

  # Маршрут-ловушка для любых путей, которые не подошли под правила выше
  # *unmatched забирает в себя любой кривой URL, а via: :all означает, что ловим все типы запросов (GET, POST и т.д.)
  match '*unmatched', to: 'application#not_found_method', via: :all
end