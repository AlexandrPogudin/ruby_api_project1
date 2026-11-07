Rails.application.routes.draw do
  # Пространство имен для API
  namespace :api do
    # Версионирование API (версия 1)
    namespace :v1 do
      # Команда resources автоматически создает все RESTful маршруты:
      # index, show, create, update, destroy
      resources :companies do
        resources :jobs, only: [:index]
      end

      resources :jobs
      resources :geeks
      resources :applies

      # Маршрут для мягкого удаления по ID
      match '/:id/mark_deleted', to: 'companies#mark_deleted', via: :put
    end
  end

  # Маршрут-ловушка для любых путей, которые не подошли под правила выше
  # *unmatched забирает в себя любой кривой URL, а via: :all означает, что ловим все типы запросов (GET, POST и т.д.)
  match '*unmatched', to: 'application#not_found_method', via: :all
end