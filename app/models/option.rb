class Option < ActiveRecord::Base
     belongs_to :question 
logger.debug "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
     validates :option, presence: true
     logger.debug "ppppppppppppppppppppppppppppppppppppppp"
end
