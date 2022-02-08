class Order < ApplicationRecord
  belongs_to :branch
  has_many :order_drugs, dependent: :destroy, inverse_of: :order
  has_many :drugs, -> { uniq }, :through => :order_drugs
  validates_presence_of :order_drugs, :message => "Prosím zadejte alespoň jeden lék"

  accepts_nested_attributes_for :order_drugs, reject_if: :all_blank, allow_destroy: true  
end
