class Step < ActiveRecord::Base
	belongs_to :routine
	belongs_to :exercise

	def computed_weight
		self.start_weight
	end
end
