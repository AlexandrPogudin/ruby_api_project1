class Company < ApplicationRecord
  has_many :jobs # Компания имеет много вакансий

  # Проверка наличия названия и ограничение длины строки
  validates :name, presence: true, length: { maximum: 200 }
  # Проверка наличия локации
  validates :location, presence: true
end
