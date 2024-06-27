class Work < ApplicationRecord
  belongs_to :torisetsu

  validates :work_like, :work_concentration, :work_incandescent, :work_fine_work, :work_heavy_lifting, :work_communication, :work_overtime, :work_party, :work_party_owner, presence: true
end
