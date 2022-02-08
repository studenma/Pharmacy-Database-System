class Reservation < ApplicationRecord
	belongs_to :branch
    has_many :reservation_drugs, inverse_of: :reservation
    has_many :drugs, -> { uniq }, :through => :reservation_drugs
    validates_presence_of :reservation_drugs, :message => "Prosím zadejte alespoň jeden lék"

    accepts_nested_attributes_for :reservation_drugs, reject_if: :all_blank, allow_destroy: true

    filterrific(
        default_filter_params: {},
        available_filters: [
          :search_query
        ]
      )
    
      scope :search_query, lambda { |query|
        return nil  if query.blank?
        where('LOWER(reservations.customer) LIKE ?', "%#{query.downcase}%")
      }
end
