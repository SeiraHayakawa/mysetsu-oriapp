class School < ApplicationRecord
  belongs_to :torisetsu

  validates :favorite_subject, presence: true
  validates :favorite_subject_reason, presence: true
  validates :least_favorite_subject, presence: true
  validates :least_favorite_subject_reason, presence: true
  validates :teacher_pet, presence: true
  validates :talking_with_friends, presence: true
  validates :group_activities, presence: true
  validates :lunch_preference, presence: true
  validates :disliked_school_activities, presence: true
  validates :best_friend, presence: true
  validates :favorite_school_event, presence: true
  validates :favorite_place_at_school, presence: true
end
