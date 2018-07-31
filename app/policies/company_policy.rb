class CompanyPolicy < ApplicationPolicy
  def index?
    user.present? && user.admin?
  end
  
  def show?
    user.present? && user == company.user || user.present? && user.admin?
  end
  
  private
  
    def company
      record
    end
end