class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"

    # Get controllers
    get '/users' do
        users = User.all
        users.to_json(include: :workout_plans)
    end

    get '/user/:id' do
        user = User.find(params[:id])
        user.to_json(include: :workout_plans)
    end

    get '/users/:id/workoutplan' do
        workout_plan = User.body_parts_with_exercises(params[:id])
        workout_plan.to_json
      end
      
    get '/workoutplan' do
        workoutplan = WorkoutPlan.all
        workoutplan.to_json
    end

    get '/bodypartexercises' do
        bodypartexercises = BodyPart.all
        bodypartexercises.to_json(include: :exercise)
    end

    get '/bodypart' do
        body_parts = BodyPart.all
        body_parts.to_json
    end

    get '/exercise' do
        exercises = Exercise.all
        exercises.to_json
    end

    # Post controllers
    post '/users' do
        user = User.create(params[:user])
        user.to_json
    end
    
    post '/workoutplans' do
        workout_plan_params = params[:workout_plan]
        body_parts_params = workout_plan_params.delete(:body_parts)
        
        # Create the workout plan
        workout_plan = WorkoutPlan.create(workout_plan_params)
        
        # Create the body parts and associated exercises
        body_parts_params.each do |body_part_params|
            exercises_params = body_part_params.delete(:exercises)
            
            # Create the body part
            body_part = workout_plan.body_parts.create(body_part_params)
            # Create the exercises for the body part
            exercises_params.each do |exercise_params|
                body_part.exercises.create(exercise_params)
            end
        end
        workout_plan.to_json(include: { body_parts: { include: :exercises } })
    end

    # Patch controllers
    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(params[:user])
        user.to_json
    end
    
    patch '/workoutplans/:id' do
        workout_plan = WorkoutPlan.find(params[:id])
      
        # Update the workout plan attributes
        workout_plan.update(params[:workout_plan])
      
        # Update or create the body parts and associated exercises
        if params[:workout_plan][:body_parts]
          params[:workout_plan][:body_parts].each do |body_part_params|
            exercises_params = body_part_params.delete(:exercises)
            body_part_id = body_part_params.delete(:id)
      
            # Find or create the body part
            body_part = BodyPart.find_or_create_by(id: body_part_id, workout_plan_id: workout_plan.id)
            body_part.update(body_part_params)
      
            # Update or create the exercises for the body part
            if exercises_params
              exercises_params.each do |exercise_params|
                exercise_id = exercise_params.delete(:id)
      
                # Find or create the exercise
                exercise = Exercise.find_or_create_by(id: exercise_id, body_part_id: body_part.id)
                exercise.update(exercise_params)
              end
            end
          end
        end
      
        workout_plan.to_json(include: { body_parts: { include: :exercises } })
      end

    # Delete controllers
    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        { message: 'User deleted successfully' }.to_json
    end

    delete '/workoutplans/:id' do
        workout_plan = WorkoutPlan.find(params[:id])
        workout_plan.destroy
        { message: 'Workout plan deleted successfully' }.to_json
    end 

end