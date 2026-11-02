class ApplySerializer < ActiveModel::Serializer
  # Отдаем статусы и внешние ключи
  attributes :id, :job_id, :geek_id, :read, :invited

  # При просмотре отклика сразу видно, 
  # кто откликнулся (geek) и на что именно (job)
  belongs_to :job
  belongs_to :geek
end