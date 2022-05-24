require 'pry'
class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company
    def dev
        Dev.where("id = ?", self.dev_id).first
    end

    def company
        Company.where("id = ?", self.company_id).first
    end

    def print_details
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

end
