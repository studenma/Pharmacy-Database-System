class SaleDrug < ApplicationRecord
    belongs_to :drug
    belongs_to :sale
    validates :amount, numericality: { greater_than_or_equal_to: 1, message: 'Musí být aspoň 1' }
  end
  