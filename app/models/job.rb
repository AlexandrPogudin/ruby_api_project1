class Job < ApplicationRecord
  belongs_to :company # Вакансия принадлежит одной компании
  has_many :applies # На одну вакансию может быть подано много заявлений (откликов)
end
