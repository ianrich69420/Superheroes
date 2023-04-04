# Superheroes

# Description

This is the project made for the ninth code challenge done in Ruby

It is a superhero domain with this ERD:

![Screenshot from 2023-04-04 22-29-25](https://user-images.githubusercontent.com/117741313/229899998-75ab86a6-7508-421e-92c6-891e766f587f.png)

It contains deliverables with routes that have the following endpoints.

`GET /heroes`

- Returns a list of all heroes in the database

`GET /heroes/:id`

- Returns a specific hero by ID and associated powers

`GET /powers`

- Returns a list of all powers in the database

`GET /powers/:id`

- Returns a specific power by ID

`PATCH /powers/:id`

- Updates an existing power

`POST /hero_powers`

- Creates a new `HeroPower` that is associated with an
  existing `Power` and `Hero`.

## Project Setup

In order for you to use the content on this repo ensure you have the following:

- A computer that runs on Linux
- Ruby installed
- Any text editor such as VSCode installed

## Instructions

- Open a terminal on your computer
- Clone the repo by using the following:

        git clone https://github.com/ianrich69420/superheroes.git

- After the repository has been cloned succesfully change directory to the repository folder:

        cd superheroes

- Open it in a text editor of your choice, however I personally prefer using VSCode so in order to open the folder in VSCode do the following:

        code .

You can use the following steps to run the app:

- Install required dependencies

        bundle install

- Test out the domain by:

- Migrating the tables and seeding to a development database

        rails db:migrate db:seed

- And running the server

        rails s

## Author

This project was contributed to by:

- [Ian Richard Orieko](https://github.com/ianrich69420/)
