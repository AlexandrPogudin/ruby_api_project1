class Apply < ApplicationRecord
  belongs_to :geek # Заявление (отклик) принадлежит одному соискателю
  belongs_to :job # Заявление принадлежит к одной конкретной вакансии

  # Наличие ваканчии и соискателя. Только целочесленные значения
  validates :job_id, presence: true, numericality: { only_integer: true }
  validates :geek_id, presence: true, numericality: { only_integer: true }
  
  # Строгая проверка логического типа
  validates :read, inclusion: { in: [true, false] }
  validates :invited, inclusion: { in: [true, false] }
end
