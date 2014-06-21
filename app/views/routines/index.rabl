collection @routines
attributes :id, :name

child :steps do
  attributes :id, :start_weight, :weight_increment, :set_reps

  child :exercise do
  	attributes :name, :rank, :body_parts
  end
end