## GoFit Backend
This is the backend of the GoFit application, built with Sinatra and ActiveRecord.

## Description
GoFit is a fitness application that allows users to view and manage workout plans, as well as browse available exercises. The backend provides the necessary APIs to handle requests from the frontend and interact with the database.

Getting Started
1. Clone the repository:
git clone https://github.com/your-username/gofit-backend.git
2. Install dependencies:
bundle install

## Configure the database:
1. Open config/database.yml.
2. Update the database configuration according to your environment (development, production, etc.).
3. Run database migrations:
4. Start the server:
5. The backend server will start running on http://localhost:9292.

### API Endpoints
The backend provides the following API endpoints:

## Users
GET /users: Fetches all users.
GET /users/:id: Fetches a specific user by ID.
POST /users: Creates a new user.
PATCH /users/:id: Updates a user.
DELETE /users/:id: Deletes a user.

## Workout Plans
GET /users/:user_id/workoutplans: Fetches all workout plans for a specific user.
GET /users/:user_id/workoutplans/:id: Fetches a specific workout plan for a user.
POST /users/:user_id/workoutplans: Creates a new workout plan for a user.
PATCH /users/:user_id/workoutplans/:id: Updates a workout plan for a user.
DELETE /users/:user_id/workoutplans/:id: Deletes a workout plan for a user.

## Body Parts
GET /bodyparts: Fetches all body parts.
GET /bodyparts/:id: Fetches a specific body part by ID.

## Exercises
GET /exercises: Fetches all exercises.
GET /exercises/:id: Fetches a specific exercise by ID.

## Front end link
https://github.com/MarsMwau/GO-FIT-front