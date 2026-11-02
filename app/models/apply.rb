class Apply < ApplicationRecord
  belongs_to :geek # Заявление (отклик) принадлежит одному соискателю
  belongs_to :job # Заявление принадлежит к одной конкретной вакансии
end
