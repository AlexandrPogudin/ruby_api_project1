class JobSerializer < ActiveModel::Serializer
  # Явно указываем, какие поля хотим отдавать в JSON.
  attributes :id, :name, :place, :company_id

  # Название компании 
  belongs_to :company
end