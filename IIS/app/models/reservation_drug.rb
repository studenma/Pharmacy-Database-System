class ReservationDrug < ApplicationRecord
  belongs_to :drug
  belongs_to :reservation
  validates :amount, numericality: { greater_than_or_equal_to: 1 }
end
