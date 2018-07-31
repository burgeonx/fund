class UserPolicy < ApplicationPolicy
  def initialize(user, record)
    @user = user
    @record = record
    super @user, @record
  end
  
  def index?
    user.present? && user.admin?
  end
  
  def show?
    @user == @record || user.present? && user.admin?
  end
end