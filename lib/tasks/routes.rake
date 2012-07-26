namespace :routes do

	desc "Create basic CRUD routes for a model"
	task :generate, :modelName do |t, args|
		views = File.join(settings.root, "views", args.modelName.downcase)
		Dir.mkdir(File.join(settings.root, "views")) unless Dir.exists?(File.join(settings.root, "views"))
		Dir.mkdir(views) unless Dir.exists? views
		Dir.mkdir(File.join(settings.root, "routes")) unless Dir.exists?(File.join(settings.root, "routes"))
		route = File.join(settings.root, "routes", args.modelName.downcase+".rb")
		routeFile = File.open(route, "w")
		routeFile.puts "class #{settings.name} < #{settings.superclass}"
		['index', 'show', 'edit'].each do |view|
			File.open(File.join(views,view+".haml"), "w")
			puts "Creating #{args.modelName}/#{view}"
			routeFile.puts "get '/#{args.modelName}/#{view}' do \n\thaml :'#{args.modelName}/#{view}' \nend"
		end
	end
end