# Sinatra Base
This is a project I use for setting up new sinatra projects.

## Generators

There are a couple generators built in, the full list can be found using bundle exec rake -T

### Models
Generating a new model can be accomplishsed by running bundle exec rake model:create[modelName] where modelName is the model you want to create. This will inherit from ActiveModel::Base

### Routes
Generating routes can be accomplished by running bundle exec rake routes:generate[modelName] where modelName is the name of the model the routes are for. It generates index, show, and edit routes and the corresponding views in the views/modelName director.

### Tests
Generating tests can be accomplished by running bundle exec rake test:generate[testName]. This creates a file that will be automatically loaded and run in the test suite. 

Tests can be run by doing bundle exec test:run