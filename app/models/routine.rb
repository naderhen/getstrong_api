class Routine < ActiveRecord::Base
	has_many :steps
	has_many :exercises, through: :steps
	has_many :workouts
end
