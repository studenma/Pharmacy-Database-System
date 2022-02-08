class SalePolicy < ApplicationPolicy
  def index?
    user
  end

  def show?
    user
  end

  def create?
    user
  end

  def new?
    create?
  end

  def update?
    user.admin? || user.manažer?
  end

  def edit?
    user.admin? || user.manažer?
  end

  def destroy?
    user.admin? || user.manažer?
  end
end
