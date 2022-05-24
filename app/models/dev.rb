class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def freebies
        Freebie.where("dev_id = ?",self.id)
    end

    def companies
        self.freebies.map do |freebie|
            Company.where("id = ?",freebie.company_id).first
        end
    end

    def received_one? item_name
        # check = self.freebies.map do |freebie|
        #     if freebie.item_name == item_name
        #         return true
        #     end
        # end
 
        # if check.compact == []
        #     return false
        # end

        check = []
        self.freebies.each do |freebie|
            if freebie.item_name == item_name
                check << freebie.item_name
            end
        end
        if check == []
            return false
        else
            return true
        end
    end

    def give_away(dev,freebie)
        if self.received_one?(freebie.item_name) == true
            freebie.update_attribute(:dev_id, dev.id)
        else
            puts "Can't give away what you don't have"
        end
    end
end
