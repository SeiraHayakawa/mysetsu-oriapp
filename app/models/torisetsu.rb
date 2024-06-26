class Torisetsu < ApplicationRecord
  belongs_to :user
  has_one :introduction
  has_one :life
end
