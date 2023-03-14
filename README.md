# Jungle

A mini e-commerce application built with Rails 6.1. It sells various indoor and outdoor plants. Users can easily browse and purchase plants based on their preferences, and each plant has a detailed description. Only admins have the ability to edit plants and categories, ensuring that all information about our products is accurate and up-to-date. 

<img width="1193" alt="Screen Shot 2023-03-14 at 17 13 31" src="https://user-images.githubusercontent.com/116608701/225142139-bd8dcd2a-f8ac-4591-a7da-f7956f013e0e.png">

<img width="1026" alt="Screen Shot 2023-03-14 at 17 13 50" src="https://user-images.githubusercontent.com/116608701/225142223-1853d5a2-30c0-4b50-944b-a02277c1c745.png">

<img width="1193" alt="Screen Shot 2023-03-14 at 17 14 19" src="https://user-images.githubusercontent.com/116608701/225142299-3cb0a495-b574-4413-a3cc-a0d2f99f0ed6.png">

<img width="1195" alt="Screen Shot 2023-03-14 at 17 19 13" src="https://user-images.githubusercontent.com/116608701/225142483-bdd07773-3579-4b3f-b4b1-3831a876fbdc.png">

<img width="1177" alt="Screen Shot 2023-03-14 at 17 17 00" src="https://user-images.githubusercontent.com/116608701/225142542-ffc9c7ff-ae49-41a4-9ea3-1941452f7428.png">






## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
