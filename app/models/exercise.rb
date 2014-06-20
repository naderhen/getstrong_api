class Exercise < ActiveRecord::Base
	has_many :steps
	has_many :routines, through: :steps
	has_many :worksets
end
