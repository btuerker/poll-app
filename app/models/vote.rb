class Vote < ApplicationRecord
  belongs_to :poll
  belongs_to :option
  belongs_to :user

  validates :user, uniqueness: { scope: :poll }
  validates :poll, presence: true
  validates :option, presence: true
  validates :user, presence: true
end
