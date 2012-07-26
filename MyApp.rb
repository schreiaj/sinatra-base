require 'sinatra/base'

class MyApp < Sinatra::Base
	set :sessions,  true

	get '/' do
		"Hello World"
	end
end