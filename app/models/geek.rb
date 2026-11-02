class Geek < ApplicationRecord
  has_many :applies # Один соискатель (гик) может подать много заявлений (откликов)
end
