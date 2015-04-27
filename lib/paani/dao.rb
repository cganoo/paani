require 'sequel'
require 'mysql2'

class Dao

	attr_reader :hostname, :username, :password, :dbname, :water_samples, :factor_weights

  def initialize(params = {})
    @hostname = params.fetch(:hostname, 'localhost')
    @username = params.fetch(:username, 'user')
    @password = params.fetch(:password, '')
    @dbname 	= params.fetch(:dbname, 'test')
    conn = Sequel.connect(:adapter => 'mysql2', :host => 'localhost', :user => 'user', :password=> '', :database => 'test')
    @water_samples = conn.from(:water_samples)
		@factor_weights = conn.from(:factor_weights)
  end

  def to_s
    puts "DAO connected to database [#{dbname}] running on host [#{hostname}]."
  end

  def list_water_samples
  	puts water_samples.all
  end

  def find_water_sample(id)
  	result = water_samples[:id => id]
  	if result
  		WaterSample.new(result)
  	else
  		result
  	end
  end

  def list_factor_weights
  	puts factor_weights.all
  end

  def find_factor_weight(id)
  	result = factor_weights[:id => id]
  	if result
  		FactorWeight.new(result)
  	else
  		result
  	end
  end


end