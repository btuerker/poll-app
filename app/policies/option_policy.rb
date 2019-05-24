class OptionPolicy < ApplicationPolicy
  def create?
    @record.poll.user == @user
  end
end
