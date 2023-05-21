Let's go through each folder and explain its purpose:

main.go: The entry point of your application where you initialize the server and routes.

config: Contains files and code related to configuration management. It typically includes settings for database connections, API keys, and other environment-specific variables.

controllers: Contains the controller files responsible for handling HTTP requests and producing responses. Each controller is responsible for a specific domain or functionality. For example, auth_controller.go would handle authentication-related endpoints, and user_controller.go would handle user-related endpoints.

middlewares: Contains the custom middleware functions used in the API service. Examples of common middleware include authentication middleware, logging middleware, rate limiting middleware, etc. Each middleware can be defined in a separate file for better organization.

models: Contains the data models representing the entities in your application. For example, user.go would define the User model with its properties and validation rules.

repositories: Contains the code responsible for interacting with the data storage layer, such as databases or external APIs. Each repository encapsulates the logic for retrieving or modifying data related to a specific entity.

services: Contains the business logic of your application. Services typically encapsulate complex operations that involve multiple repositories and external services. For example, user_service.go might contain functions related to user registration, authentication, or user management.

utils: Contains utility functions or helper files that can be reused across the application. It may include response formatting, error handling, validation helpers, and other common functionalities.

This folder structure provides a modular organization, separating concerns and improving maintainability. Feel free to adapt it according to your specific needs and project requirements.

To run project use `make run`

To create db container from makefile use `make postgres-start` and `make createdb`