# API Side
Routine.destroy_all
Exercise.destroy_all
Step.destroy_all
Workout.destroy_all
Workset.destroy_all

squat = Exercise.create(name: "Squat", rank: "Primary", body_parts: ["Legs"])
front_squat = Exercise.create(name: "Front Squat", rank: "Primary", body_parts: ["Legs"])
bench = Exercise.create(name: "Bench Press", rank: "Primary", body_parts: ["Chest"])
deadlift = Exercise.create(name: "Deadlift", rank: "Primary", body_parts: ["Legs"])
overhead = Exercise.create(name: "Overhead Press", rank: "Primary", body_parts: ["Shoulders"])
barbell = Exercise.create(name: "Barbell Row", rank: "Primary", body_parts: ["Back"])

rope_pullback = Exercise.create(name: "Anterior Delt Rope Pullback", rank: "Secondary", body_parts: ["Shoulders"])

incline_db = Exercise.create(name: "Incline DB Press", rank: "Secondary", body_parts: ["Chest"])

tricurl = Exercise.create(name: "Tri-Set Curl", rank: "Secondary", body_parts: ["Biceps"])
preacher = Exercise.create(name: "Preacher Curl", rank: "Secondary", body_parts: ["Biceps"])
standing_bb = Exercise.create(name: "Standing BB Curl w/ EZ Bar", rank: "Secondary", body_parts: ["Biceps"])
dbcurl = Exercise.create(name: "Dumbbell Curl", rank: "Secondary", body_parts: ["Biceps"])
reverse_curl = Exercise.create(name: "Reverse Barbell Curl", rank: "Secondary", body_parts: ["Biceps"])

rope_push = Exercise.create(name: "Rope Pushdown", rank: "Secondary", body_parts: ["Triceps"])
skull = Exercise.create(name: "Skull-Crushers", rank: "Secondary", body_parts: ["Triceps"])
dips = Exercise.create(name: "Dips", rank: "Secondary", body_parts: ["Triceps"])

pullup = Exercise.create(name: "Pullups", rank: "Secondary", body_parts: ["Back"])
dbrow = Exercise.create(name: "One Arm DB Row", rank: "Secondary", body_parts: ["Back"])
shrug = Exercise.create(name: "DB Shrug", rank: "Secondary", body_parts: ["Back"])


r1 = Routine.create(name: "Chest Workout")
Step.create(routine_id: r1.id, exercise_id: front_squat.id, start_weight: 95, weight_increment: 20, set_reps: [5, 5, 5, 5])
Step.create(routine_id: r1.id, exercise_id: bench.id, start_weight: 135, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r1.id, exercise_id: incline_db.id, start_weight: 55, weight_increment: 20, set_reps: [12, 10, 8, 6])

r2 = Routine.create(name: "Back Workout")
Step.create(routine_id: r2.id, exercise_id: deadlift.id, start_weight: 185, weight_increment: 20, set_reps: [5])
Step.create(routine_id: r2.id, exercise_id: barbell.id, start_weight: 135, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r2.id, exercise_id: dbrow.id, start_weight: 55, weight_increment: 20, set_reps: [12, 10, 8, 6])

r3 = Routine.create(name: "Shoulder Workout")
Step.create(routine_id: r3.id, exercise_id: front_squat.id, start_weight: 95, weight_increment: 20, set_reps: [5, 5, 5, 5])
Step.create(routine_id: r3.id, exercise_id: overhead.id, start_weight: 65, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r3.id, exercise_id: rope_pullback.id, start_weight: 45, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r3.id, exercise_id: shrug.id, start_weight: 55, weight_increment: 10, set_reps: [12, 10, 8, 6])

r4 = Routine.create(name: "Arm Workout")
Step.create(routine_id: r4.id, exercise_id: tricurl.id, start_weight: 45, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r4.id, exercise_id: dbcurl.id, start_weight: 35, weight_increment: 10, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r4.id, exercise_id: standing_bb.id, start_weight: 55, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r4.id, exercise_id: reverse_curl.id, start_weight: 45, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r4.id, exercise_id: rope_push.id, start_weight: 70, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r4.id, exercise_id: skull.id, start_weight: 45, weight_increment: 20, set_reps: [12, 10, 8, 6])
Step.create(routine_id: r4.id, exercise_id: dips.id, start_weight: 0, weight_increment: 20, set_reps: [12, 10, 8, 6])

w1 = Workout.create(date: Date.today, routine_id: r1.id)
Workset.create(workout_id: w1.id, exercise_id: front_squat.id, weight: 95, prescribed_reps: 5, accomplished_reps: 5)
Workset.create(workout_id: w1.id, exercise_id: front_squat.id, weight: 115, prescribed_reps: 5, accomplished_reps: 5)
Workset.create(workout_id: w1.id, exercise_id: front_squat.id, weight: 135, prescribed_reps: 5, accomplished_reps: 5)
Workset.create(workout_id: w1.id, exercise_id: front_squat.id, weight: 155, prescribed_reps: 5, accomplished_reps: 5)
Workset.create(workout_id: w1.id, exercise_id: bench.id, weight: 135, prescribed_reps: 12, accomplished_reps: 12)
Workset.create(workout_id: w1.id, exercise_id: bench.id, weight: 155, prescribed_reps: 10, accomplished_reps: 10)
Workset.create(workout_id: w1.id, exercise_id: bench.id, weight: 175, prescribed_reps: 8, accomplished_reps: 8)
Workset.create(workout_id: w1.id, exercise_id: bench.id, weight: 195, prescribed_reps: 6, accomplished_reps: 6)
Workset.create(workout_id: w1.id, exercise_id: incline_db.id, weight: 55, prescribed_reps: 12, accomplished_reps: 12)
Workset.create(workout_id: w1.id, exercise_id: incline_db.id, weight: 75, prescribed_reps: 10, accomplished_reps: 10)
Workset.create(workout_id: w1.id, exercise_id: incline_db.id, weight: 95, prescribed_reps: 8, accomplished_reps: 8)
Workset.create(workout_id: w1.id, exercise_id: incline_db.id, weight: 105, prescribed_reps: 6, accomplished_reps: 6)
