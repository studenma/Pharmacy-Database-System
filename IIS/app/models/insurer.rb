class Insurer < ApplicationRecord
    has_many :contributions, dependent: :destroy, inverse_of: :insurer
    has_many :drugs, -> { uniq }, :through => :contributions
    has_many :sales, dependent: :destroy
    validates :code, numericality: { greater_than_or_equal_to: 1, message: 'Nevhodný formát' }
    validates_format_of :orgid, :with => /\A[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]\Z/i, :on => :create, :message => 'Špatný formát IČO'
end
