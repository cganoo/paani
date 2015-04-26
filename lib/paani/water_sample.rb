require 'mysql'

class WaterSample

	attr_accessor :dao

	def initialize
		@dao = WaterSampleInfoDao.new
	end

  def find(sample_id)
    # spec
    # sample2 = WaterSample.find(2)
    # sample2.site.should == "North Hollywood Pump Station (well blend)")
    # sample2.chloroform.should == 0.00291
    # sample2.bromoform.should == 0.00487
    # sample2.bromodichloromethane.should == 0.00547
    # sample2.dibromichloromethane.should == 0.0109
    @dao.find(sample_id)
  end

  # Return the value of the computed factor with id of factor_weights_id
  def factor(factor_weights_id)
    # spec:
    #  sample2 = WaterSample.find(2)
    #  sample2.factor(6) #computes the 6th factor of sample #2
    #    => .0213
    # Note that the factor for this example is from data not in the sample data
    # above, that's because I want you to be sure you understand how to compute
    # this value conceptually.
    puts "Invoked factor method in WaterSample"



  end

  # convert the object to a hash
  # if include_factors is true, inlcude all computed factors in the hash
  def to_hash(include_factors = false)
    # spec:
    #  sample2.to_hash
    #   => {:id =>2, :site => "North Hollywood Pump Station (well blend)", :chloroform => .00291, :bromoform => .00487, :bromodichloromethane => .00547 , :dibromichlormethane => .0109}
    # sample2.to_hash(true)
    # #let's say only 3 factors exist in our factors table, with ids of 5, 6, and 9
    #   => {:id =>2, :site => "North Hollywood Pump Station (well blend)", :chloroform => .00291, :bromoform => .00487, :bro   modichloromethane => .00547 , :dibromichlormethane => .0109, :factor_5 => .0213, :factor_6 => .0432, :factor_9 => 0.0321}

  end

end

