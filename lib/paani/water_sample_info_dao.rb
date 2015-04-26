require 'mysql'

class WaterSampleInfoDao

	attr_reader :hostname, :username, :password, :dbname, :conn

  def initialize(params = {})
    @hostname = params.fetch(:hostname, 'localhost')
    @username = params.fetch(:username, 'user')
    @password = params.fetch(:password, '')
    @dbname 	= params.fetch(:dbname, 'test')
    @conn = Mysql.new(hostname, username, password, dbname)
  rescue Mysql::Error => e
   	puts "Err. #{e.errno}: #{e.error}"
    @conn.close if @conn
  end

  def to_s
    puts "DAO connected to MySQL database [#{dbname}] running on host [#{hostname}]."
  end

  def list
  	begin
  			results = @conn.query "SELECT * FROM water_samples"
  			if results.num_rows == 0
  				puts "No information available about water samples"
  			else
  				puts "Listing #{results.num_rows} known water samples"
  				results.each_hash do |row|
    			puts "#{row}"
    		end
  	end
  		results.free
		ensure
  		@conn.close
		end
	end

	def find(id)
  	begin
  			results = @conn.query("SELECT * FROM water_samples WHERE id = '#{id}'")
  			if results.num_rows == 0
  				puts "Specified id [#{id}] does not match any known water sample"
  			else
  				results.each_hash do |row|
    			puts "#{row}"
    		end
  	end
  		results.free
		ensure
  		@conn.close
		end
	end
end