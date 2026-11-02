class Job < ApplicationRecord
  belongs_to :company # Вакансия принадлежит одной компании
  has_many :applies # На одну вакансию может быть подано много заявлений (откликов)

  # Проверка наличия названия и ограничение длины строки
  validates :name, presence: true, length: { maximum: 200 }
  # Значение должно быть строго одним из списка
  validates :place, presence: true, inclusion: { in: ['Office', 'Remote', 'Hybrid', 'Contract', 'Permanent'] }
  # Проверка, что внешний ключ - это целое число
  validates :company_id, presence: true, numericality: { only_integer: true }
  # Проверка валидности связанной модели (если компания невалидна, вакансия не сохранится)
  validates_associated :company
end
