class Torisetsu < ApplicationRecord
  belongs_to :user
  has_one :introduction
  has_one :life
  has_one :work
  has_one :school
  has_one :partner
  has_one :hobby
end
