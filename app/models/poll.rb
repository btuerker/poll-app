class Poll < ApplicationRecord
  has_many :options, dependent: :destroy
  has_many :votes, dependent: :destroy

  belongs_to :user
end
