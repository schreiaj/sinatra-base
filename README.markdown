# Sinatra Base
This is a project I use for setting up new sinatra projects.	


## About

This is a basic set up for using Sinatra and CouchDB together, it contains a handful of generators for making models, routes, and views as well as generating test scripts. 

## Requirements

This uses CouchDB so you will have to have it installed on your system. It will automatically be started by foreman.

## Generators

There are a couple generators built in, the full list can be found using bundle exec rake -T

### Models
Generating a new model can be accomplishsed by running bundle exec rake model:create[modelName] where modelName is the model you want to create. This will inherit from ActiveModel::Base

### Routes
Generating routes can be accomplished by running bundle exec rake routes:generate[modelName] where modelName is the name of the model the routes are for. It generates index, show, and edit routes and the corresponding views in the views/modelName director.

### Tests
Generating tests can be accomplished by running bundle exec rake test:generate[testName]. This creates a file that will be automatically loaded and run in the test suite. 

Tests can be run by doing bundle exec test:run

## Running

This can be run by running a bundle install and then the server can be started with a bundle exec foreman start