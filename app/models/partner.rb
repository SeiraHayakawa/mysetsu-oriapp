class Partner < ApplicationRecord
  belongs_to :torisetsu

  validates :favorite_aspect, presence: true
  validates :calm_activity, presence: true
  validates :initial_attraction, presence: true
  validates :comforting_action, presence: true
  validates :disagreement_trigger, presence: true
  validates :appearance_concern, presence: true
  validates :favorite_date, presence: true
  validates :ideal_relationship, presence: true
  validates :affection_expression, presence: true
end