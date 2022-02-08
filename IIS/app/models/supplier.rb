class Supplier < ApplicationRecord
    has_many :drugs, inverse_of: :supplier
end
