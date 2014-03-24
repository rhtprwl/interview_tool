class Question < ActiveRecord::Base
	
 has_many :options, dependent: :destroy

 validates :question, presence: true

 validates :option1, presence: true 
 validates :option2, presence: true 
 	validates :option3, presence: true 
 	validates :option4, presence: true 
 	
 
end
