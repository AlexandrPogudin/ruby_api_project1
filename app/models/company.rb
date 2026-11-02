class Company < ApplicationRecord
  has_many :jobs # Компания имеет много вакансий
end
