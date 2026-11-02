class GeekSerializer < ActiveModel::Serializer
  # Явно указываем, какие поля хотим отдавать в JSON.
  attributes :id, :name, :stack, :resume
end