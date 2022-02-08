class ReservationCleanupJob < ApplicationJob
  queue_as :default

  def perform()
    Reservation.all.each { |reservation| reservation.destroy if ((Time.now - reservation.date).to_i / 1.day) > 14 }
  end
end
