namespace :model  do
	
	desc "Create a new model object framework for you"
	task :create, :modelName do |t, args|
		models = File.join(settings.root, "models")
		Dir.mkdir models unless Dir.exists? models
		path = File.join(models, args.modelName.downcase+".rb")
		if !File.exists? path
			m = File.open(path, "w")
			m.puts "class #{args.modelName} < ActiveRecord::Base\n"
			m.puts "end"
			m.close
		else
			puts "There is already a model created named #{args.modelName}"
		end
	end
end