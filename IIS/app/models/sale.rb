class Sale < ApplicationRecord
  belongs_to :branch
  belongs_to :insurer, optional: true  
  has_many :sale_drugs, dependent: :destroy, inverse_of: :sale
  has_many :drugs, -> { uniq }, :through => :sale_drugs
  validates_presence_of :sale_drugs, :message => "Prosím zadejte alespoň jeden lék"
  validates_format_of :rc, :with => /\A(([0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]?)|())\Z/i, :on => :create, :message => 'Špatný formát rodného čísla'

  accepts_nested_attributes_for :sale_drugs, reject_if: :all_blank, allow_destroy: true  

end
