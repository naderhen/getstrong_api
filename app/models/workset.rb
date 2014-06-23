class Workset < ActiveRecord::Base
	belongs_to :routine
	belongs_to :exercise
	belongs_to :workout
end
