# API Side
e = Exercise.create(name: "Squat", rank: "Primary", body_parts: ["Legs"])


r = Routine.create(name: "Workout A")

s = Step.create(routine_id: r.id, exercise_id: e.id, start_weight: 135, weight_increment: 20, set_reps: [12, 10, 8, 6])


# User Side
w = Workout.create(routine_id: r.id, date: Date.today)

Workset.create(workout_id: w.id, exercise_id: e.id, weight: 135, prescribed_reps: 12, accomplished_reps: 12)
Workset.create(workout_id: w.id, exercise_id: e.id, weight: 155, prescribed_reps: 10, accomplished_reps: 10)