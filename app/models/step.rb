class Step < ActiveRecord::Base
	belongs_to :routine
	belongs_to :exercise

	def computed_weight
		begin
			last_workout = self.exercise.workouts.uniq.last
			worksets = last_workout.worksets.where(exercise: self.exercise)

			weighted_average = worksets.sum("weight * accomplished_reps") / worksets.sum("accomplished_reps")
			closest_weight = worksets.map {|ws| ws.weight }.min_by { |x| (x.to_f - weighted_average).abs }
			return closest_weight
		rescue
			return self.start_weight || 0
		end
	end
end
