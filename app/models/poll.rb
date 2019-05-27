class Poll < ApplicationRecord
  has_many :options, dependent: :destroy
  has_many :votes, dependent: :destroy
  belongs_to :user

  accepts_nested_attributes_for :options, reject_if: Proc.new { |attr| attr['body'].blank? }

  validates :question, presence: true, length: {maximum: 255}
  validates :user, presence: true
  validate :at_least_one_option

  private

  def at_least_one_option
    self.errors[:options] << "There would be at least one option" unless self.options.length > 0
  end
end
