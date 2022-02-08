module SalesHelper
    def getContribution (salesObj, drug_id)
        if salesObj.insurer
            contributions = Contribution.where(["insurer_id = ? and drug_id = ? ", "#{salesObj.insurer.id}", "#{drug_id}"])
        else
            return "-"
        end

        if contributions.empty?
            return "-"
        else
            "#{contributions[0].amount}Kč"
        end
    end

    def getPriceAfterContribution (salesObj, drug_id, price, amount)
        if salesObj.insurer
            contributions = Contribution.where(["insurer_id = ? and drug_id = ? ", "#{salesObj.insurer.id}", "#{drug_id}"])
        else
            return "-"
        end

        if contributions.empty?
            return "-"
        else
            "#{(price - contributions[0].amount) * amount}Kč"
        end
    end

    def getTotalPrice (salesObj)
        price = 0
        salesObj.sale_drugs.each do |sale|
            price = price + (sale.drug.price * sale.amount)
        end
        "#{price}Kč"
    end

    def getTotalCustomerPrice (salesObj)
        price = 0
        salesObj.sale_drugs.each do |sale|
            if salesObj.insurer
                discount = Contribution.where(["insurer_id = ? and drug_id = ? ", "#{salesObj.insurer.id}", "#{sale.drug_id}"])
            else
                discount = []
            end
            if discount.empty?
                price = price + (sale.drug.price * sale.amount)
            else
                price = price + ((sale.drug.price - discount[0].amount) * sale.amount)
            end
        end
        "#{price}Kč"
    end

    def makeSale (salesObj)
        salesObj.sale_drugs.each do |sale|
            availablesObj = salesObj.branch.availables.where("drug_id = #{sale.drug.id}")[0]
            if (availablesObj.amount - sale.amount) < 0
                salesObj.update_attribute(:amount, availablesObj.amount)
                availablesObj.update_attribute(:amount, 0)
            else
                availablesObj.update_attribute(:amount, availablesObj.amount - sale.amount)
            end
        end
    end

    def revertSale(salesObj)
        salesObj.sale_drugs.each do |sale|
            availablesObj = salesObj.branch.availables.where("drug_id = #{sale.drug.id}")[0]    
            availablesObj.update_attribute(:amount, availablesObj.amount + sale.amount)
        end
    end
end
