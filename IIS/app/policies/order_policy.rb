class OrderPolicy < ApplicationPolicy
  def index?
    user.manažer? || user.admin?
  end

  def show?
    user.manažer? || user.admin?
  end

  def create?
    user.admin? || user.manažer?
  end

  def new?
    create?
  end

  def update?
    user.admin? || user.manažer?
  end

  def edit?
    update?
  end

  def destroy?
    user.admin?
  end
end
