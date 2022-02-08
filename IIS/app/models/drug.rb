class Drug < ApplicationRecord
  belongs_to :supplier

  has_many :availables, dependent: :destroy, inverse_of: :drug
  has_many :branches, -> { uniq }, :through => :availables
  has_many :reservation_drugs, dependent: :destroy, inverse_of: :drug
  has_many :reservations, -> { uniq }, :through => :reservation_drugs
  has_many :contributions, dependent: :destroy, inverse_of: :drug
  has_many :insurers, -> { uniq }, :through => :contributions 
  has_many :order_drugs, dependent: :destroy, inverse_of: :drug
  has_many :orders, -> { uniq }, :through => :order_drugs 
  has_many :sale_drugs, dependent: :destroy, inverse_of: :drug
  has_many :sales, -> { uniq }, :through => :sale_drugs 
  validates :price, numericality: { greater_than_or_equal_to: 1, :message => 'Musí být aspoň 1'}

  filterrific(
    default_filter_params: {},
    available_filters: [
      :search_query
    ]
  )

  scope :search_query, lambda { |query|
    return nil  if query.blank?
    where('LOWER(drugs.name) LIKE ?', "%#{query.downcase}%")
  }

  scope :prescribed, lambda { |prescribed_bool|
    where(prescription: [*prescribed_bool])
  }
end