class Question < ActiveRecord::Base
	
 has_many :options, dependent: :destroy

 validates :question, presence: true
 
 validates :answer, presence: true 
end
