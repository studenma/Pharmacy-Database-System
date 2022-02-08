module OrdersHelper
    def orderComplete (id)
        order = Order.find(id)
        order.update_attribute(:pending, false)
        branch = order.branch
        order.order_drugs.each do |o|
            availableObj = branch.availables.where("drug_id = #{ o.drug_id }")[0]
            availableObj.update_attribute(:amount, availableObj.amount + o.amount)
        end
    end

    def orderRevert (id)
        order = Order.find(id)
        order.update_attribute(:pending, true)
        branch = order.branch
        order.order_drugs.each do |o|
            availableObj = branch.availables.where("drug_id = #{ o.drug_id }")[0]
            availableObj.update_attribute(:amount, availableObj.amount - o.amount)
        end
    end
end
