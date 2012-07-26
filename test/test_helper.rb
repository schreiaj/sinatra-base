require 'test/unit'
require 'capybara'
require 'capybara/dsl'

class TestSuite < Test::Unit::TestCase
	include Capybara::DSL
	# Capybara.default_driver = :selenium # <-- use Selenium driver

	def setup
		Capybara.app = Sinatra::Application.new
	end
	Dir.glob(settings.root + '/test/*.rb').each do |f| 	
		puts "Running tests from file: #{f}" unless f == __FILE__ 
		require f unless f == __FILE__ 
	end

end