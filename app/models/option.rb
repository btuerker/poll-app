class Option < ApplicationRecord
  belongs_to :poll

  validates :body, presence: true, length: {maximum: 255}
  validates :poll, presence: true

  def option_body
    self.body
  end

end
