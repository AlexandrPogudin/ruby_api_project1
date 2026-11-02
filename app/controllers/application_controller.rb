class ApplicationController < ActionController::API
  # Глобальный перехват ошибки "Запись не найдена"
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  # Публичный метод для обработки несуществующих маршрутов
  def not_found_method
    render json: { error: "Route not found" }, status: :not_found
  end
  
  # Внутренние методы класса
  private

  # Метод, который сработает при перехвате
  def record_not_found(error)
    # Возвращаем аккуратный JSON с текстом ошибки и правильным HTTP-статусом 404
    render json: { error: error.message }, status: :not_found
  end
end