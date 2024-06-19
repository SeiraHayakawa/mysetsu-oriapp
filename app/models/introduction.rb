class Introduction < ApplicationRecord
  belongs_to :torisetsu

  
  validates :birth_day, presence: true
  validates :blood_type, presence: true
  validates :body_height, presence: true
  validates :body_weight, presence: true
  validates :favorite_food, presence: true
  validates :dislike_food, presence: true
  validates :favorite_color, presence: true
  validates :favorite_place, presence: true

end
