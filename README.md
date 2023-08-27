# BoardgameColellection

A web-based boadrgame collection application for users to know everything about different boardgames, manage their collections of boardgames and make friends!

## Installation

- ruby '3.2.0'
- Rails 7.0.4.3
- redis server
- node.js

## Usage
First time running
- open a termnial to run the redis server to support the running of the forum in the app
- open another terminal and direct to the app folder
- run 'bundle install' to install required gems
- run 'rails db:migrate' to create its database
- run 'rails db:seed' to load data from 'seeds.rb' file
- run 'rails s' to run the app
- open a browser and go to localhost to experience this prototype

After first time
- run 'rails s' to run the app
- open a browser and go to localhost to experience this prototype

Changing the content about games
- edict related content in the 'seeds.rb' file
- run 'rails db:reset' to reset the database
- run 'rails db:seed' to reload data from 'seeds.rb' file

