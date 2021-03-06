#If you change the name of this file you must also change the require statement 
# in the Rakefile and in the config.ru to whatever the new name is. If you know 
# of a clever fix to this let me know. 


require 'bundler'
require 'yaml'
Bundler.require

STDOUT.sync = true
base = File.dirname(__FILE__)
Dir.glob(base + '/config/*.rb'    ).each { |f| require f }
Dir.glob(base + '/models/*.rb'    ).each { |f| require f }
Dir.glob(base + '/helpers/*.rb'    ).each { |f| require f }
Dir.glob(base + '/resources/*.rb'   ).each { |f| require f }
class MyApp < Sinatra::Base
	set :name, self.name
	set :superclass, self.superclass
	set :root, File.dirname(__FILE__)
	set :public_folder, settings.root + '/public'
	set :views, settings.root + "/views"
end