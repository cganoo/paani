require 'simplecov'
SimpleCov.start

require 'rspec'
require 'yaml'
Dir["#{File.dirname(__FILE__)}/../lib/paani/**/*.rb"].each {|f| require f}
