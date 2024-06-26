class Life < ApplicationRecord
  belongs_to :torisetsu
  
  validates :life_morning, presence: true
  validates :life_breakfast, presence: true
  validates :life_breakfast_weight, presence: true
  validates :life_cry, presence: true
  validates :life_crytime, presence: true
  validates :life_anger, presence: true
  validates :life_battle, presence: true
  validates :life_sleep, presence: true
end
