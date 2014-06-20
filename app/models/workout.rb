class Workout < ActiveRecord::Base
	belongs_to :routine
	has_many :worksets
	has_many :exercises, through: :worksets
end
