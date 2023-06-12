require 'rack/cors'
class ApplicationController < Sinatra::Base
  use Rack::Cors do
    allow do
      origins 'http://localhost:3000' 
      resource '*', headers: :any, methods: [:get, :post, :patch, :delete, :options], expose: ['Access-Control-Allow-Origin']
    end
  end
  

    set default_content_type: "application/json"
    set :logging, true

    # Get controllers
    get '/users' do
        users = User.all
        users.to_json(include: :workout_plans)
    end

    get '/user/:id' do
        user = User.find(params[:id])
        user.to_json(include: :workout_plans)
    end

    get '/users/:id/workoutplans' do
      user_id = params[:id]
      workout_plans = User.body_parts_with_exercises(user_id)
      workout_plans.to_json
    end
      
    get '/workoutplan' do
        workoutplan = WorkoutPlan.all
        workoutplan.to_json
    end

    get '/bodyparts_exercises' do
      body_parts = BodyPart.includes(:exercises).all
      body_parts.to_json(include: :exercises)
    end

    get '/bodyparts' do
        body_parts = BodyPart.all
        body_parts.to_json
    end

    get '/exercise' do
        exercises = Exercise.all
        exercises.to_json
    end

    # Post controllers
    post '/signup' do
        data = JSON.parse(request.body.read)
        # Create a new User object with the received data
        user = User.new(
            user_name: data['user_name'],
            email: data['email'],
            age: data['age'],
            height: data['height'],
            weight: data['weight']
        )
        # Validate and save the user object to the database
        if user.save
            status 201
            { message: 'User created successfully!' }.to_json
        else
            status 400
            { message: 'User not Created try again Later' }.to_json
        end
    end
    
    # User Login - POST route
    post '/login' do
        # Parse the JSON payload sent from the frontend
        data = JSON.parse(request.body.read)
        # Check if the email exists in the database
        user = User.find_by(email: data['email'])
        if user
            status 200
            { message: 'Login successful' }.to_json
        else
            status 404
            { error: 'User not found' }.to_json
        end
    end

    post '/workoutplans' do
        begin
          workout_plan_params = params[:workout_plan]
          body_parts_params = workout_plan_params.delete(:body_parts)
      
          # Create the workout plan
          workout_plan = WorkoutPlan.create!(workout_plan_params)
      
          # Create the body parts and associated exercises
          body_parts_params.each do |body_part_params|
            exercises_params = body_part_params.delete(:exercises)
      
            # Create the body part
            body_part = workout_plan.body_parts.create!(body_part_params)
      
            # Create the exercises for the body part
            exercises_params.each do |exercise_params|
              body_part.exercises.create!(exercise_params)
            end
          end
      
          status 201
          workout_plan.to_json(include: { body_parts: { include: :exercises } })
        rescue StandardError => e
          status 500
          { error: e.message }.to_json
        end
      end

      post '/workout_plans' do
        request_body = JSON.parse(request.body.read)
      
        # Extract user_id from the request body
        user_id = request_body['user_id']
      
        # Create a new workout plan for the user
        workout_plan = WorkoutPlan.new(user_id: user_id)
        workout_plan.save
      
        # Iterate over the body_parts array in the request body
        request_body['body_parts'].each do |body_part_params|
          # Create a new body part associated with the workout plan
          body_part = BodyPart.new(
            body_part_name: body_part_params['body_part_name'],
            image: body_part_params['body_part_image'],
            workout_kind: body_part_params['workout_kind'],
            workout_plan: workout_plan
          )
          body_part.save
      
          # Iterate over the exercises array in the current body part
          body_part_params['exercises'].each do |exercise_params|
            # Create a new exercise associated with the body part and workout plan
            exercise = Exercise.new(
              exercise_name: exercise_params['exercise_name'],
              exercise_type: exercise_params['exercise_type'],
              exercise_image: exercise_params['exercise_image'],
              exercise_description: exercise_params['exercise_description'],
              weight_kgs: exercise_params['weight_kgs'],
              sets: exercise_params['sets'],
              reps: exercise_params['reps'],
              body_part: body_part,
              workout_plan: workout_plan
            )
            exercise.save
          end
        end
        status 201
  content_type :json
  { message: 'Workout plan created successfully', workout_plan: workout_plan }.to_json
rescue StandardError => e
  status 500
  { error: e.message }.to_json
end
      

      patch '/users/:user_id/workoutplan/exercises/:exercise_id' do
        user = User.find(params[:user_id])
      
        if user.workout_plans.empty?
          status 404
          return { error: 'Workout plan not found for the user' }.to_json
        end
      
        exercise = user.workout_plans.first.exercises.find_by(id: params[:exercise_id])
      
        if exercise.nil?
          status 404
          return { error: 'Exercise not found' }.to_json
        end
      
        exercise.sets = params[:sets]
        exercise.reps = params[:reps]
        exercise.exercise_description = params[:description]
      
        if exercise.save
          { message: 'Exercise updated successfully' }.to_json
        else
          status 500
          { error: 'Error updating exercise' }.to_json
        end
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

      patch '/exercises/:id' do
        begin
          exercise = Exercise.find(params[:id])
          exercise.description = params[:description]
          exercise.save
      
          { message: 'Exercise description updated successfully' }.to_json
        rescue StandardError => e
          status 500
          { message: "Error updating exercise description: #{e.message}" }.to_json
        end
      end

    # Delete controllers
    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        { message: 'User deleted successfully' }.to_json
    end

    delete '/workoutplans/:id' do
  workout_plan = WorkoutPlan.find(params[:id])

  if workout_plan.destroy
    { message: 'Workout plan deleted successfully' }.to_json
  else
    { message: 'Failed to delete workout plan' }.to_json
  end
end

end