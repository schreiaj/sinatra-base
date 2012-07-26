require 'bundler'
require 'active_record'
require 'yaml'
Bundler.require

STDOUT.sync = true
base = File.dirname(__FILE__)
Dir.glob(base + '/config/*.rb'    ).each { |f| require f }
Dir.glob(base + '/models/*.rb'    ).each { |f| require f }
Dir.glob(base + '/helpers/*.rb'    ).each { |f| require f }
Dir.glob(base + '/resources/*.rb'   ).each { |f| require f }
class MyApp < Sinatra::Base
	set :root, File.dirname(__FILE__)
	set :public_folder, settings.root + '/public'
	set :views, settings.root + "/views"
end