class Geek < ApplicationRecord
  has_many :applies # Один соискатель (гик) может подать много заявлений (откликов)

  # Проверка наличия названия и ограничение длины строки
  validates :name, presence: true, length: { maximum: 50 }
  # Проверка наличия стека и ограничение длины строки
  validates :stack, presence: true, length: { maximum: 300 }
end
