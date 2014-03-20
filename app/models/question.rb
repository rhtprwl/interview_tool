class Question < ActiveRecord::Base
	
	belongs_to :category
 has_many :options, dependent: :destroy

 validates :question, presence: true
 
 validates :answer, presence: true 
end
