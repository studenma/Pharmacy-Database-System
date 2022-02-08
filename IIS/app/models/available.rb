class Available < ApplicationRecord
    belongs_to :drug
    belongs_to :branch
    validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
