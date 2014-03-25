class Question < ActiveRecord::Base
 has_many :options, dependent: :destroy
 logger.debug "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
 validates :question, presence: true
 logger.debug "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
end
