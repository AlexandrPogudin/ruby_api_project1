class CompanySerializer < ActiveModel::Serializer
  # Явно указываем, какие поля хотим отдавать в JSON.
  attributes :id, :name, :location, :deleted

  # Список всех её актуальных вакансий
  has_many :jobs
end