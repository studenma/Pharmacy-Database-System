class ReservationPolicy < ApplicationPolicy
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
    user
  end

  def edit?
    update?
  end

  def destroy?
    user
  end

  def processReservation?
    user
  end
end
