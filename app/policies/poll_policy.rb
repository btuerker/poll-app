class PollPolicy < ApplicationPolicy
  def update?
    @record.user == @user
  end
end
