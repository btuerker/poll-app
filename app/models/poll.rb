class Poll < ApplicationRecord
  has_many :options, dependent: :destroy
  has_many :votes, dependent: :destroy
  belongs_to :user

  validates :question, presence: true, length: {maximum: 255}
  validates :user, presence: true
  validate :at_least_one_option

  def at_least_one_option
    self.errors[:options] << "can’t be optionless" if self.options.count <= 0
  end
end
