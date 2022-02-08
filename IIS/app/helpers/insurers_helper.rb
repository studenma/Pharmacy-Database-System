module InsurersHelper
    def getContributions (iid, did)
    	Branch.find(bid).availables.where("drug_id = #{ did }")[0].amount
    end
end
