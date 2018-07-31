class UserPolicy < ApplicationPolicy
  def index?
    user.present? && user.admin?
  end
  
  def show?
    user.present? && user == current_user || user.present? && user.admin?
  end
end