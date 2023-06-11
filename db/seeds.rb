puts "🌱 Start Seeding data..."
# Seed Users table

users = [
    { user_name: "JohnDoe", email: "johndoe@gmail.com", age: 30, height: 180, weight: 75 },
    { user_name: "JaneSmith", email: "janesmith@gmail.com", age: 25, height: 165, weight: 60 },
    { user_name: "MarkJohnson", email: "markjohnson@yahoo.com", age: 15, height: 175, weight: 80 },
    { user_name: "SarahWilliams", email: "sarahwilliams@gmail.com", age: 28, height: 160, weight: 55 },
    { user_name: "MichaelBrown", email: "michaelbrown@outlook.com", age: 42, height: 185, weight: 90 },
    { user_name: "EmilyDavis", email: "emilydavis@outlook.com", age: 31, height: 170, weight: 65 },
    { user_name: "DanielWilson", email: "danielwilson@outlook.com", age: 19, height: 178, weight: 73 },
    { user_name: "JessicaTaylor", email: "jessicataylor@yahoo.com", age: 27, height: 163, weight: 58 },
    { user_name: "DavidMiller", email: "davidmiller@yahoo.com", age: 38, height: 180, weight: 85 },
    { user_name: "OliviaAnderson", email: "oliviaanderson@gmail.com", age: 26, height: 168, weight: 62 }
  ]
  users.each { |user| User.create(user) }

puts "🌱 Start Seeding Workout_plan data..."
# Seed WorkoutPlans table
workout_plans = [
    { day: "Monday", user_id: 1 },
    { day: "Tuesday", user_id: 1 },
    { day: "Wednesday", user_id: 1 },
    { day: "Thursday", user_id: 1 },
    { day: "Friday", user_id: 1 },
    { day: "Saturday", user_id: 1 },
    { day: "Sunday", user_id: 1 }
  ]
  workout_plans.each { |workout_plan| WorkoutPlan.create(workout_plan) }
 
  puts "🌱 Start Seeding body_parts data..."
  # Seed BodyParts table
  body_parts = [
    
    { body_part_name: "Glutes", workout_kind: "Lower Body", image: "https://i.pinimg.com/564x/34/bf/43/34bf43ea560eb967b66a09e5dc6ca7ac.jpg", workout_plan_id: 1,  },
    { body_part_name: "Chest", workout_kind: "Upper Body", image: "https://i.pinimg.com/564x/72/27/51/72275199bcfacdc5163f4b4a08f50f8e.jpg", workout_plan_id: 2, },
    { body_part_name: "Hamstrings", workout_kind: "Lower Body", image: "https://legionathletics.com/wp-content/uploads/2016/02/hamstring-anatomy-1.jpg", workout_plan_id: 3, },
    { body_part_name: "Calves", workout_kind: "Lower Body", image: "https://img.mensxp.com/media/content/2018/Sep/puny-calf-muscles-here-is-how-to-make-them-grow-1400x653-1537949158.jpg", workout_plan_id: 3, },
    { body_part_name: "Quads", workout_kind: "Lower Body", image: "https://149874912.v2.pressablecdn.com/wp-content/uploads/2020/11/Quad-muscle-exercises.jpg", workout_plan_id: 1, },
    { body_part_name: "Back", workout_kind: "Upper Body", image: "https://staticg.sportskeeda.com/editor/2022/06/1af46-16547540774621-1920.jpg?w=840", workout_plan_id: 2, },
    { body_part_name: "Lats", workout_kind: "Upper Body", image: "https://topfitnesshome.com/wp-content/uploads/best-back-exercises-for-women-lats-min.jpg", workout_plan_id: 4, },
    { body_part_name: "Delts", workout_kind: "Upper Body", image: "https://www.muscleandfitness.com/wp-content/uploads/2018/05/1109-shoulders.jpg?quality=86&strip=all", workout_plan_id: 4,},
    { body_part_name: "Abs", workout_kind: "Core", image: "https://i.pinimg.com/564x/f9/f0/16/f9f0168ec641184bd6b8f7cceefb9ee4.jpg", workout_plan_id: 5, },
    { body_part_name: "Cardio", workout_kind: "Cardio", image: "https://i.pinimg.com/564x/0d/6b/df/0d6bdf344b405f96d28afd3ac17fef5b.jpg", workout_plan_id: 5, },
    
  ]
  body_parts.each { |body_part| BodyPart.create(body_part) }
  
  puts "🌱 Start Seeding glutes_exercises data..."
  # Seed Exercises table
  glutes_exercises = [
    { exercise_name: "Squats", exercise_type: "Compound", exercise_description: "Perform squats with proper form and control.", exercise_image: "https://i.pinimg.com/564x/91/58/76/915876e7168ca638c44c0973f3ddb48e.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Hip Thrusts", exercise_type: "Compound", exercise_description: "Perform hip thrusts with proper form and control.", exercise_image: "https://i.pinimg.com/564x/32/6a/13/326a13e42b9d33ae4124af41f030f0bf.jpg", sets: 3, reps: 12, weight_kgs: 20, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Glute Bridge", exercise_type: "Isolation", exercise_description: "Perform glute bridge with proper form and control.", exercise_image: "https://i.pinimg.com/564x/0f/c3/53/0fc353e48eecee56b215fa1b62dc0674.jpg", sets: 3, reps: 15, weight_kgs: 10, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Romanian Deadlifts", exercise_type: "Compound", exercise_description: "Perform Romanian deadlifts to target your hamstrings and glutes.", exercise_image: "https://i.pinimg.com/564x/e5/52/e0/e552e0a1b6ee84a83654df9f59ee3c58.jpg", sets: 4, reps: 8, weight_kgs: 60, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Sumo Squat", exercise_type: "Compound", exercise_description: "Perform sumo squats to target your inner thighs and glutes.", exercise_image: "https://i.pinimg.com/564x/4d/3d/f9/4d3df9df309e9bbf4f9b4d69f4b3e565.jpg", sets: 3, reps: 12, weight_kgs: 40, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Cable Glute Kickback", exercise_type: "Isolation", exercise_description: "Perform cable glute kickbacks to isolate and activate your glute muscles.", exercise_image: "https://i.pinimg.com/564x/ce/17/2c/ce172ca402f11202b9cfe3af0701d842.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Step-Up", exercise_type: "Compound", exercise_description: "Perform step-ups to engage your glutes and improve lower body strength.", exercise_image: "https://i.pinimg.com/564x/4f/39/97/4f3997c21e63ad1696d3c2777b9f7c17.jpg", sets: 3, reps: 10, weight_kgs: 20, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Donkey Kickbacks", exercise_type: "Isolation", exercise_description: "Perform donkey kickbacks to target your glutes and enhance muscle definition.", exercise_image: "https://i.pinimg.com/564x/5b/6d/63/5b6d6314131ff13f45c360d5482c7339.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Good Mornings", exercise_type: "Compound", exercise_description: "Perform good mornings to strengthen your glutes and hamstrings.", exercise_image: "https://i.pinimg.com/564x/48/d1/fc/48d1fc7c700adbdccbae2ad22c2aa5f3.jpg", sets: 4, reps: 8, weight_kgs: 50, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Side Lunges", exercise_type: "Compound", exercise_description: "Perform side lunges to target your glutes and add variation to your leg workout.", exercise_image: "https://i.pinimg.com/564x/26/17/a8/2617a8798f81f9559feb6acebf7cf41d.jpg", sets: 3, reps: 10, weight_kgs: 30, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Kettlebell Swing", exercise_type: "Compound", exercise_description: "Perform kettlebell swings to work your glutes, hamstrings, and core.", exercise_image: "https://i.pinimg.com/564x/7b/1e/9a/7b1e9a2a0e96cfe569603ad25c4e311c.jpg", sets: 3, reps: 15, weight_kgs: 16, body_part_id: 1, workout_plan_id: 1 },
    { exercise_name: "Bulgarian Split Squat", exercise_type: "Compound", exercise_description: "Perform Bulgarian split squats to target your glutes, quads, and improve balance.", exercise_image: "https://i.pinimg.com/564x/ed/bd/32/edbd325804e293d0e95c2fe7d23a9aab.jpg", sets: 3, reps: 12, weight_kgs: 20, body_part_id: 1, workout_plan_id: 1 }
  ]
  glutes_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding chest_exercises data..."
  chest_exercises = [
    { exercise_name: "Flat Bench Press", exercise_type: "Compound", exercise_description: "Perform flat bench press with proper form and control while lying on the bench.", exercise_image: "https://i.pinimg.com/564x/cb/a3/b3/cba3b383de97764b0c5b727f7bd7f28e.jpg", sets: 3, reps: 10, weight_kgs: 60, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Inclined Press", exercise_type: "Compound", exercise_description: "Perform inclined press to target your upper chest muscles.", exercise_image: "https://i.pinimg.com/564x/26/c5/d3/26c5d367802da79f36c63e58666df2a0.jpg", sets: 3, reps: 12, weight_kgs: 50, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Chest Dips", exercise_type: "Compound", exercise_description: "Perform chest dips to strengthen your chest and triceps muscles.", exercise_image: "https://i.pinimg.com/564x/10/7a/16/107a16392f14725c48683cb3c17d4fb3.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Machine Press", exercise_type: "Isolation", exercise_description: "Perform machine press to isolate and target your chest muscles.", exercise_image: "https://i.pinimg.com/564x/41/b2/e5/41b2e5a03f8483d329d3f2c5ba65718c.jpg", sets: 3, reps: 12, weight_kgs: 70, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Dumbbell Pullover", exercise_type: "Isolation", exercise_description: "Perform dumbbell pullover to work your chest and stretch your upper body.", exercise_image: "https://i.pinimg.com/564x/b2/56/95/b2569556f3e87e676bf1eb61e24613df.jpg", sets: 3, reps: 12, weight_kgs: 25, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Pushups", exercise_type: "Compound", exercise_description: "Perform pushups to strengthen your chest, shoulders, and triceps.", exercise_image: "https://i.pinimg.com/564x/e1/ce/54/e1ce546b30580e3702e49aa69395379c.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Cable Fly", exercise_type: "Isolation", exercise_description: "Perform cable fly to target your chest muscles using cable resistance.", exercise_image: "https://i.pinimg.com/564x/88/2d/8c/882d8c56d7b989d3f3548e78a2085b86.jpg", sets: 3, reps: 12, weight_kgs: 30, body_part_id: 2, workout_plan_id: 2 },
    { exercise_name: "Cable Crossovers", exercise_type: "Isolation", exercise_description: "Perform cable crossovers to work your chest muscles from different angles.", exercise_image: "https://i.pinimg.com/564x/89/fb/bf/89fbbfaf98ee6342affa686ed62942e3.jpg", sets: 3, reps: 12, weight_kgs: 35, body_part_id: 2, workout_plan_id: 2 }
  ]
  chest_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding hamstrings_exercises data..."
  hamstrings_exercises = [
    { exercise_name: "Lying Leg Curls", exercise_type: "Isolation", exercise_description: "Perform lying leg curls to target your hamstrings.", exercise_image: "https://i.pinimg.com/564x/2b/0a/e1/2b0ae14076504a77a26685f86470232f.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 3, workout_plan_id: 1 },
    { exercise_name: "Deadlifts", exercise_type: "Compound", exercise_description: "Perform deadlifts to strengthen your hamstrings and posterior chain.", exercise_image: "https://i.pinimg.com/564x/73/13/5b/73135b33441766eb3c5b67a5b90a0c62.jpg", sets: 4, reps: 8, weight_kgs: 80, body_part_id: 3, workout_plan_id: 1 },
    { exercise_name: "Hamstring Curls", exercise_type: "Isolation", exercise_description: "Perform hamstring curls to isolate and activate your hamstrings.", exercise_image: "https://i.pinimg.com/564x/c5/07/3e/c5073e4e70a2558fbdf0857e611389f7.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 3, workout_plan_id: 1 },
    { exercise_name: "Romanian Deadlifts", exercise_type: "Compound", exercise_description: "Perform Romanian deadlifts to target your hamstrings and glutes.", exercise_image: "https://i.pinimg.com/564x/e5/52/e0/e552e0a1b6ee84a83654df9f59ee3c58.jpg", sets: 4, reps: 8, weight_kgs: 60, body_part_id: 3, workout_plan_id: 1 },
    { exercise_name: "Good Mornings", exercise_type: "Compound", exercise_description: "Perform good mornings to strengthen your glutes and hamstrings.", exercise_image: "https://i.pinimg.com/564x/48/d1/fc/48d1fc7c700adbdccbae2ad22c2aa5f3.jpg", sets: 4, reps: 8, weight_kgs: 50, body_part_id: 3, workout_plan_id: 1 },
    { exercise_name: "Single-Leg Romanian Deadlifts", exercise_type: "Compound", exercise_description: "Perform single-leg Romanian deadlifts to target each hamstring individually.", exercise_image: "https://i.pinimg.com/564x/54/ff/31/54ff3157f791c390c9b734c395afe66a.jpg", sets: 3, reps: 10, weight_kgs: 40, body_part_id: 3, workout_plan_id: 3 },
    { exercise_name: "Hamstring Bridge", exercise_type: "Isolation", exercise_description: "Perform hamstring bridges to activate and strengthen your hamstrings.", exercise_image: "https://i.pinimg.com/564x/0f/c3/53/0fc353e48eecee56b215fa1b62dc0674.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 3, workout_plan_id: 3 }
  ]
  hamstrings_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding calves_exercises data..."
  calves_exercises = [
    { exercise_name: "Standing Calf Raises", exercise_type: "Isolation", exercise_description: "Perform standing calf raises to target your calf muscles.", exercise_image: "https://i.pinimg.com/564x/b6/7b/65/b67b65ddaeae39b321933c803940d8af.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 4, workout_plan_id: 3 },
    { exercise_name: "Seated Calf Raises", exercise_type: "Isolation", exercise_description: "Perform seated calf raises to focus on your calf muscles.", exercise_image: "https://i.pinimg.com/564x/71/6c/8d/716c8d96feb2aa7725efa94f966ce17a.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 4, workout_plan_id: 3 },
    { exercise_name: "Calf Press on Leg Press Machine", exercise_type: "Compound", exercise_description: "Perform calf presses on the leg press machine to target your calves.", exercise_image: "https://i.pinimg.com/564x/6c/81/2e/6c812e6e4365b79eb85e5f9df1be4c80.jpg", sets: 4, reps: 10, weight_kgs: 100, body_part_id: 4, workout_plan_id: 3 },
    { exercise_name: "Jump Rope", exercise_type: "Cardio", exercise_description: "Jump rope to engage your calf muscles and improve cardiovascular fitness.", exercise_image: "https://i.pinimg.com/564x/58/a3/54/58a3549690ab7e732a835bf3356679f4.jpg", sets: 3, reps: 100, weight_kgs: nil, body_part_id: 4, workout_plan_id: 3 },
    { exercise_name: "Calf Raises on Smith Machine", exercise_type: "Isolation", exercise_description: "Perform calf raises on the Smith machine to target your calf muscles.", exercise_image: "https://i.pinimg.com/564x/e1/8b/50/e18b508a9f088f54d80c5ededf3dbafd.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 4, workout_plan_id: 3 },
    { exercise_name: "Box Jumps", exercise_type: "Plyometric", exercise_description: "Perform box jumps to work your calves and improve explosive power.", exercise_image: "https://i.pinimg.com/564x/a9/e2/49/a9e2490334953e0a42a088324b01ccaa.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 4, workout_plan_id: 3 }
  ]
  calves_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding quads_exercises data..."
  quads_exercises = [
    { exercise_name: "Barbell Squats", exercise_type: "Compound", exercise_description: "Perform barbell squats to target your quadriceps and build leg strength.", exercise_image: "https://i.pinimg.com/564x/03/ef/e5/03efe5b62024637cdb841e7071c7a1be.jpg", sets: 3, reps: 10, weight_kgs: 80, body_part_id: 5, workout_plan_id: 1 },
    { exercise_name: "Leg Press", exercise_type: "Compound", exercise_description: "Perform leg press to work your quads and increase lower body strength.", exercise_image: "https://i.pinimg.com/564x/50/a7/e2/50a7e2b8e81b7fc3bbd90ddd7b6bc6cb.jpg", sets: 3, reps: 12, weight_kgs: 120, body_part_id: 5, workout_plan_id: 1 },
    { exercise_name: "Walking Lunges", exercise_type: "Compound", exercise_description: "Perform walking lunges to target your quads and improve balance.", exercise_image: "https://i.pinimg.com/564x/20/0b/ec/200bece886b9a19336e9009793bca489.jpg", sets: 3, reps: 20, weight_kgs: nil, body_part_id: 5, workout_plan_id: 1 },
    { exercise_name: "Hack Squats", exercise_type: "Compound", exercise_description: "Perform hack squats to engage your quads and develop lower body strength.", exercise_image: "https://i.pinimg.com/564x/47/55/d9/4755d93dbe81208be165d46d2140c612.jpg", sets: 4, reps: 8, weight_kgs: 100, body_part_id: 5, workout_plan_id: 1 },
    { exercise_name: "Bulgarian Split Squats", exercise_type: "Compound", exercise_description: "Perform Bulgarian split squats to target your quads and improve lower body stability.", exercise_image: "https://i.pinimg.com/564x/ed/bd/32/edbd325804e293d0e95c2fe7d23a9aab.jpg", sets: 3, reps: 10, weight_kgs: 40, body_part_id: 5, workout_plan_id: 1 },
    { exercise_name: "Front Squats", exercise_type: "Compound", exercise_description: "Perform front squats to focus on your quadriceps and improve squat technique.", exercise_image: "https://i.pinimg.com/564x/63/60/c9/6360c9bcf979ff7aa94473a1564cf594.jpg", sets: 3, reps: 12, weight_kgs: 60, body_part_id: 1, workout_plan_id: 5 }
  ]
  quads_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding back_exercises data..."
  back_exercises = [
    { exercise_name: "Pull-ups", exercise_type: "Compound", exercise_description: "Perform pull-ups to target your back and build upper body strength.", exercise_image: "https://i.pinimg.com/564x/d0/a5/ea/d0a5ea68e55c0d2ab76bd1517eea19db.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 6, workout_plan_id: 2 },
    { exercise_name: "Barbell Rows", exercise_type: "Compound", exercise_description: "Perform barbell rows to work your back muscles and improve posture.", exercise_image: "https://i.pinimg.com/564x/50/6b/55/506b5544edb97d3762302860ba436a6d.jpg", sets: 3, reps: 12, weight_kgs: 60, body_part_id: 6, workout_plan_id: 2 },
    { exercise_name: "Lat Pulldowns", exercise_type: "Isolation", exercise_description: "Perform lat pulldowns to target your latissimus dorsi muscles.", exercise_image: "https://i.pinimg.com/564x/bb/52/8e/bb528e977dc8453339f41baf08db46ac.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 6, workout_plan_id: 2 },
    { exercise_name: "Dumbbell Rows", exercise_type: "Compound", exercise_description: "Perform dumbbell rows to strengthen your back and improve unilateral strength.", exercise_image: "https://i.pinimg.com/564x/41/f6/8a/41f68aaf1c39b3501bc195fd8df5a32a.jpg", sets: 4, reps: 8, weight_kgs: 20, body_part_id: 6, workout_plan_id: 2 },
    { exercise_name: "Reverse Flyes", exercise_type: "Isolation", exercise_description: "Perform reverse flyes to target your rear deltoids and upper back muscles.", exercise_image: "https://i.pinimg.com/564x/ea/57/70/ea5770d497589196c4b8bb9ee4e78d46.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 6, workout_plan_id: 2 },
    { exercise_name: "T-Bar Rows", exercise_type: "Compound", exercise_description: "Perform T-bar rows to engage your back muscles and improve strength.", exercise_image: "https://i.pinimg.com/564x/01/79/dc/0179dcfd485a6db07791b087126a0608.jpg", sets: 3, reps: 10, weight_kgs: 40, body_part_id: 6, workout_plan_id: 2 }
  ]
  back_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding lats_exercises data..."
  lats_exercises = [
    { exercise_name: "Pull-Ups", exercise_type: "Compound", exercise_description: "Perform pull-ups to target your lats and improve upper body strength.", exercise_image: "https://i.pinimg.com/564x/d0/a5/ea/d0a5ea68e55c0d2ab76bd1517eea19db.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 7, workout_plan_id: 4 },
    { exercise_name: "Lat Pulldowns", exercise_type: "Isolation", exercise_description: "Perform lat pulldowns to isolate and engage your lats.", exercise_image: "https://i.pinimg.com/564x/bb/52/8e/bb528e977dc8453339f41baf08db46ac.jpg", sets: 3, reps: 12, weight_kgs: 60, body_part_id: 7, workout_plan_id: 4 },
    { exercise_name: "Bent-Over Rows", exercise_type: "Compound", exercise_description: "Perform bent-over rows to target your lats and build a strong back.", exercise_image: "https://i.pinimg.com/564x/ca/1c/eb/ca1cebe71c52d206b9833f60bb5ea4d6.jpg", sets: 4, reps: 8, weight_kgs: 70, body_part_id: 7, workout_plan_id: 4 },
    { exercise_name: "T-Bar Rows", exercise_type: "Compound", exercise_description: "Perform T-bar rows to work your lats and develop upper body strength.", exercise_image: "https://i.pinimg.com/564x/01/79/dc/0179dcfd485a6db07791b087126a0608.jpg", sets: 3, reps: 10, weight_kgs: 50, body_part_id: 7, workout_plan_id: 4 },
    { exercise_name: "Seated Cable Rows", exercise_type: "Isolation", exercise_description: "Perform seated cable rows to target your lats and improve back definition.", exercise_image: "https://i.pinimg.com/564x/3b/f9/f2/3bf9f2d02039bb9ec20466ce6cc1a37b.jpg", sets: 3, reps: 12, weight_kgs: 60, body_part_id: 7, workout_plan_id: 4 },
    { exercise_name: "Straight-Arm Pulldowns", exercise_type: "Isolation", exercise_description: "Perform straight-arm pulldowns to isolate and engage your lats.", exercise_image: "https://i.pinimg.com/564x/9a/49/79/9a4979622e409dc644cee8d639c819a5.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 7, workout_plan_id: 4 }
  ]
  lats_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding delts_exercises data..."
  delts_exercises = [
    { exercise_name: "Shoulder Press", exercise_type: "Compound", exercise_description: "Perform shoulder press to target your deltoids and build upper body strength.", exercise_image: "https://i.pinimg.com/736x/df/aa/a7/dfaaa7b53b305245ee0ddf8d49d48008.jpg", sets: 3, reps: 10, weight_kgs: 40, body_part_id: 8, workout_plan_id: 4 },
    { exercise_name: "Dumbbell Lateral Raises", exercise_type: "Isolation", exercise_description: "Perform dumbbell lateral raises to isolate and work your lateral deltoids.", exercise_image: "https://i.pinimg.com/564x/35/d6/b2/35d6b20154c187282c409a1bab1aa626.jpg", sets: 3, reps: 12, weight_kgs: 10, body_part_id: 8, workout_plan_id: 4 },
    { exercise_name: "Front Dumbbell Raises", exercise_type: "Isolation", exercise_description: "Perform front dumbbell raises to target your front deltoids.", exercise_image: "https://i.pinimg.com/564x/57/07/83/57078380a7c0aa8c8d2cad12311fdbff.jpg", sets: 3, reps: 12, weight_kgs: 12, body_part_id: 8, workout_plan_id: 4 },
    { exercise_name: "Arnold Press", exercise_type: "Compound", exercise_description: "Perform Arnold press to engage your deltoids and increase shoulder stability.", exercise_image: "https://i.pinimg.com/564x/cb/be/b6/cbbeb6c3eb7009f59ae75bdb2118e1ea.jpg", sets: 3, reps: 10, weight_kgs: 20, body_part_id: 8, workout_plan_id: 4 },
    { exercise_name: "Upright Rows", exercise_type: "Compound", exercise_description: "Perform upright rows to target your traps and deltoids.", exercise_image: "https://i.pinimg.com/564x/40/91/1a/40911a424361786d0616a903a42fd073.jpg", sets: 3, reps: 12, weight_kgs: 30, body_part_id: 8, workout_plan_id: 4 },
    { exercise_name: "Bent-Over Dumbbell Rear Delt Raises", exercise_type: "Isolation", exercise_description: "Perform bent-over dumbbell rear delt raises to work your rear deltoids.", exercise_image: "https://i.pinimg.com/564x/05/97/60/059760da179098235c73ea23f2526146.jpg", sets: 3, reps: 12, weight_kgs: 8, body_part_id: 8, workout_plan_id: 4 }
  ]
  delts_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding abs_exercises data..."
  abs_exercises = [
    { exercise_name: "Crunches", exercise_type: "Isolation", exercise_description: "Perform crunches to target your abdominal muscles.", exercise_image: "https://i.pinimg.com/564x/3f/6c/2c/3f6c2c3624a44693a535687c895a7c79.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Plank", exercise_type: "Isometric", exercise_description: "Hold a plank position to engage your core muscles.", exercise_image: "https://i.pinimg.com/564x/c0/e3/bb/c0e3bb84b895a4b86d38e3ba922ea3c5.jpg", sets: 3, reps: 60, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Russian Twists", exercise_type: "Isolation", exercise_description: "Perform Russian twists to work your oblique muscles.", exercise_image: "https://i.pinimg.com/564x/f9/c1/96/f9c196c2faaf323071e3cf07694981b2.jpg", sets: 3, reps: 20, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Leg Raises", exercise_type: "Isolation", exercise_description: "Perform leg raises to target your lower abdominal muscles.", exercise_image: "https://i.pinimg.com/564x/f9/d7/a4/f9d7a4536d55e8ac98f4c8fdc41ff13f.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Bicycle Crunches", exercise_type: "Isolation", exercise_description: "Perform bicycle crunches to engage your abs and obliques.", exercise_image: "https://i.pinimg.com/564x/fe/ef/c3/feefc3fa8c49b04dcf0c1d00ab0f6dc6.jpg", sets: 3, reps: 20, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Mountain Climbers", exercise_type: "Compound", exercise_description: "Perform mountain climbers to work your abs and increase heart rate.", exercise_image: "https://i.pinimg.com/564x/97/f8/d1/97f8d1550dde04e03014d6ad045215b1.jpg", sets: 3, reps: 20, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Hanging Leg Raises", exercise_type: "Isolation", exercise_description: "Perform hanging leg raises to target your lower abs and improve core strength.", exercise_image: "https://i.pinimg.com/564x/f6/5b/93/f65b93ead234dfb334614a0c59645a2f.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Reverse Crunches", exercise_type: "Isolation", exercise_description: "Perform reverse crunches to target your lower abs and improve core stability.", exercise_image: "https://i.pinimg.com/564x/0e/df/b2/0edfb235dfb7c99006c3ebb1ba286f05.jpg", sets: 3, reps: 15, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Sit-Ups", exercise_type: "Isolation", exercise_description: "Perform sit-ups to engage your abs and strengthen your core.", exercise_image: "https://i.pinimg.com/564x/39/1e/aa/391eaac774b677d802d4886c6709d33b.jpg", sets: 3, reps: 12, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 },
    { exercise_name: "Side Plank", exercise_type: "Isometric", exercise_description: "Hold a side plank position to target your oblique muscles.", exercise_image: "https://i.pinimg.com/564x/1f/61/59/1f61597a2ac86e79c30abc7e139defc9.jpg", sets: 3, reps: 45, weight_kgs: nil, body_part_id: 9, workout_plan_id: 5 }
  ]
  abs_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Start Seeding cardio_exercises data..."
cardio_exercises = [
  { exercise_name: "Running", exercise_type: "Cardiovascular", exercise_description: "Go for a run to get your heart pumping and improve cardiovascular fitness.", exercise_image: "https://i.pinimg.com/564x/0d/6b/df/0d6bdf344b405f96d28afd3ac17fef5b.jpg", sets: nil, reps: nil, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Cycling", exercise_type: "Cardiovascular", exercise_description: "Hop on a bike and cycle to improve endurance and leg strength.", exercise_image: "https://i.pinimg.com/564x/a4/b2/ed/a4b2ed0e769b0b7a9c4dd941f116e720.jpg", sets: nil, reps: nil, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Jumping Jacks", exercise_type: "Cardiovascular", exercise_description: "Perform jumping jacks to get your heart rate up and burn calories.", exercise_image: "https://i.pinimg.com/564x/eb/00/65/eb006524fc01a1f338474492050e1136.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Burpees", exercise_type: "Cardiovascular", exercise_description: "Do burpees to work multiple muscle groups and increase heart rate.", exercise_image: "https://i.pinimg.com/564x/3e/a5/c3/3ea5c3aa24b167757c89e8093035e1c5.jpg", sets: nil, reps: 3, weight_kgs: 10, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "High Knees", exercise_type: "Cardiovascular", exercise_description: "Perform high knees to elevate heart rate and engage core and leg muscles.", exercise_image: "https://i.pinimg.com/564x/08/7b/3d/087b3d9f19e78073f77e7e694e61fafd.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Jump Rope", exercise_type: "Cardiovascular", exercise_description: "Grab a jump rope and start jumping to improve coordination and cardiovascular endurance.", exercise_image: "https://i.pinimg.com/564x/25/56/42/2556426c6734c9ab95e250b904f0df44.jpg", sets: 0, reps: 45, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Stair Climbing", exercise_type: "Cardiovascular", exercise_description: "Climb stairs to challenge leg muscles and improve cardiovascular fitness.", exercise_image: "https://i.pinimg.com/564x/93/e1/46/93e146542b6f5be932aa6c72b525064f.jpg", sets: 3, reps: 10, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Swimming", exercise_type: "Cardiovascular", exercise_description: "Take a swim to work the entire body and improve cardiovascular health.", exercise_image: "https://i.pinimg.com/564x/38/f1/03/38f1034c6d5de98539015c61b7763814.jpg", sets: nil, reps: nil, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 },
  { exercise_name: "Elliptical Training", exercise_type: "Cardiovascular", exercise_description: "Use an elliptical machine for low-impact cardio workout targeting multiple muscle groups.", exercise_image: "https://i.pinimg.com/564x/c4/f1/03/c4f103de2b520a8edf306016274b074b.jpg", sets: nil, reps: nil, weight_kgs: nil, body_part_id: 10, workout_plan_id: 5 }
]

cardio_exercises.each { |exercise| Exercise.create(exercise) }

  puts "🌱 Done Seeding data..."