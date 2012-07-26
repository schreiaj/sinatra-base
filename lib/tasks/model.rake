namespace :model  do
	
	desc "Create a new model object framework for you"
	task :create do
		path = File.join(settings.root, "models", ARGV[1].downcase+".rb")
		if !File.exists? path
			m = File.open(path, "w")
			m.puts "class #{ARGV[1]} < ActiveRecord::Base"
			m.puts "end"
			m.close
		else
			puts "There is already a model created named #{ARGV[1]}"
		end
	end
end