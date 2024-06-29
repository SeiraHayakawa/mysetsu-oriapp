class Hobby < ApplicationRecord
  belongs_to :torisetsu

  validates :hobby_name, presence: true
  validates :frequency, presence: true
  validates :no_time_effect, presence: true
  validates :satisfaction_moment, presence: true
  validates :immersion_effect, presence: true
  validates :start_time, presence: true
  validates :fatigue_effect, presence: true
  validates :inability_effect, presence: true

end
