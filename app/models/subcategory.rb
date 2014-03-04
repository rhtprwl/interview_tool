class Subcategory < ActiveRecord::Base
	before_save { self.subcategory_name = subcategory_name.downcase }
	validates :subcategory_name, presence: true, 
                    uniqueness: { case_sensitive: false }
end
