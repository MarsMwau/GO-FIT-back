## MARTHA MWAU
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
1. GET /users: Fetches all users.
2. GET /users/:id: Fetches a specific user by ID.
3. POST /users: Creates a new user.
4. PATCH /users/:id: Updates a user.
5. DELETE /users/:id: Deletes a user.
## Workout Plans
1. GET /users/:user_id/workoutplans: Fetches all workout plans for a specific user.
2. GET /users/:user_id/workoutplans/:id: Fetches a specific workout plan for a user.
3. POST /users/:user_id/workoutplans: Creates a new workout plan for a user.
4. PATCH /users/:user_id/workoutplans/:id: Updates a workout plan for a user.
5. DELETE /users/:user_id/workoutplans/:id: Deletes a workout plan for a user.
## Body Parts
1. GET /bodyparts: Fetches all body parts.
2. GET /bodyparts/:id: Fetches a specific body part by ID.
## Exercises
1. GET /exercises: Fetches all exercises.
2. GET /exercises/:id: Fetches a specific exercise by ID.

## Table Screenshots
![Screenshot from 2023-06-12 22-47-41](https://github.com/MarsMwau/GO-FIT-back/assets/115712038/0a78832c-3c6e-42b8-b4e5-d741915b664d)

## Front End Link
This is the Github link to my Frontend that is made up of React.
https://github.com/MarsMwau/GO-FIT-front

## Technologies Used
1. Ruby.
2. Sinatra
3. Active Record
4. Sqllite3

## Contact Information
* Email : marthamumbua16@gmail.com

## [License](LICENSE)
MIT License
Copyright (c) 2023 Martha Mwau