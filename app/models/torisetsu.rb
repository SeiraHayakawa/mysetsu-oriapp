class Torisetsu < ApplicationRecord
  belongs_to :user
  has_one :introduction
end
