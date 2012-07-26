# Sinatra Base
This is a project I use for setting up new sinatra projects.

## Generators

There are a couple generators built in, the full list can be found using bundle exec rake -T

### Models
<<<<<<< HEAD
Generating a new model can be accomplishsed by running bundle exec rake model:create[modelName] where modelName is the model you want to create. This will inherit from ActiveModel::Base

### Routes
Generating routes can be accomplished by running bundle exec rake routes:generate[modelName] where modelName is the name of the model the routes are for. It generates index, show, and edit routes and the corresponding views in the views/modelName director.
=======
Generating a new model can be accomplishsed by running bundle exec rake model:create[<modelName>] where <modelName> is the model you want to create. This will inherit from ActiveModel::Base

### Routes
Generating routes can be accomplished by running bundle exec rake routes:generate[<modelName>] where <modelName> is the name of the model the routes are for. It generates index, show, and edit routes and the corresponding views in the views/<modelName> director.
>>>>>>> 5a392118ad6ca2a3d533a47e4bbcd143c646c82e
