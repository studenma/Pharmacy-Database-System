module DrugsHelper
    def reserved (bid, did)
        total = 0
        ReservationDrug.joins( :reservation ).where( :reservation_drugs => { :drug_id => did }, :reservations => { :branch_id => bid }).each do |res| 
            total = total + res.amount
        end
        total
    end

    def getAmount (bid, did)
    	Branch.find(bid).availables.where("drug_id = #{ did }")[0].amount - reserved(bid, did)
    end
end
