
markdown
# PizzaApp - StrongMind Take-Home Assignment

## Overview

This app was designed as part of StrongMind's jr software egnineer role hiring process. 
Developed with Ruby on Rails and PostgreSQL, it focuses on clean, maintainable code. 

## Key Features

- **Data Persistence**: Used PostgreSQL for server-side data storage, ensuring persistence across sessions.
- **Automated Testing**: Includes a test suite with RSpec, covering couple functionalities.
- **Code Quality**: Adheres to Ruby on Rails best practices.
- **User Interface**: Offers a straightforward and intuitive interface.
- **Deployment**: Available online via Fly.io for easy access anywhere.

## Local Setup

### Prerequisites

- Ruby (see `.ruby-version`)
- PostgreSQL
- Node.js
- Yarn

### Steps

1. **Clone the repo:**
   ```
   git clone https://github.com/Nasseralqutaim/PizzaApp && cd pizzaapp
   ```

2. **Install dependencies:**
   ```
   bundle install && yarn install
   ```

3. **Set up the database:**
   ```
   rails db:create db:migrate db:seed
   ```

4. **Start the server:**
   ```
   rails s
   ```
   Access the app at `http://localhost:3000`.



## Testing

### Running the Automated Test Suite

Our project uses RSpec as the testing framework to ensure that all functionalities meet the expected outcomes and to maintain code quality. Follow the steps below to execute the automated tests:

### Prerequisites

Before running the tests, ensure that you have the following set up on your machine:

- Ruby (version specified in **`.ruby-version`** file)
- Rails (version specified in **`Gemfile`**)
- Bundler (run `gem install bundler` to install)
- All project dependencies installed (run `bundle install` in the project root directory)

### Database Setup for Testing

To prepare your test database, run the following commands in the terminal:

```bash
rails db:create RAILS_ENV=test
rails db:migrate RAILS_ENV=test
```

If your tests require specific data to be present, ensure that your **`db/seeds.rb`** file or specific test setup procedures populate the necessary data.

### Running the Tests

To run the entire test suite, execute the following command from the root directory of the project:

```bash
bundle exec rspec
```

This command runs all spec files located in the **`spec/`** directory. RSpec will provide a summary of the test results, including the number of tests that passed, failed, or were skipped.

### Running Specific Tests

If you wish to run a specific test file rather than the entire suite, you can specify the file path after the **`rspec`** command. For example, to run only the model tests for the **`Pizza`** model:

```bash
bundle exec rspec spec/models/pizza_spec.rb
```

Similarly, to run tests in a specific directory:

```bash
bundle exec rspec spec/controllers/
```


## Deployment

Visit the deployed app: [PizzaApp on Fly.io](https://pizzaapp-purple-waterfall-5565.fly.dev).

## Thought Process

I used Ruby on Rails which offers a robust framework for quickly developing features with a focus on testing and maintainability. PostgreSQL was chosen for its advanced features and compatibility with cloud services. The decision to deploy on Fly.io was driven by its ease of use.

