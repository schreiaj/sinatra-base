namespace :test do
	desc "Run the test suite"
	task :run do
		require File.join(settings.root, "test", "test_helper.rb")
	end

	task :generate, :filename do |t, args|
		path = File.join(settings.root, "test")
		if !File.exists?(File.join(path,args.filename+".rb"))
			f = File.open(File.join(path,args.filename+".rb"), "w")
			f.puts("class TestSuite < Test::Unit::TestCase\nend")
			f.close
		end
	end
	
end