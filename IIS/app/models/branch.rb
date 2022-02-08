class Branch < ApplicationRecord
	has_many :reservations, dependent: :destroy, inverse_of: :branch
	has_many :orders, dependent: :destroy, inverse_of: :branch
    has_many :availables, dependent: :destroy, inverse_of: :branch
    has_many :drugs, -> { uniq }, :through => :availables

    has_many :users
end
