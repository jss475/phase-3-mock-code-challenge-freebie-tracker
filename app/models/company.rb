class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def freebies
        Freebie.where("company_id = ?",self.id)
    end

    def devs
        all_freebies = self.freebies
        all_devs = all_freebies.map do |freebie|
            Dev.where("id = ?",freebie.dev_id).first
        end
    end

    def give_freebie(dev, item_name, value)
        Freebie.create(dev_id: dev.id, item_name: item_name, value: value, company_id: self.id)
    end

    def self.oldest_company
        Company.all.order(:founding_year).first
    end
end
