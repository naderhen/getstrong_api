object @routine
attributes :id, :name

child :steps do
  attributes :id, :computed_weight, :weight_increment, :set_reps

  child :exercise do
  	attributes :name, :rank, :body_parts
  end
end
