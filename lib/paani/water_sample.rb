class WaterSample
  attr_accessor :id, :site, :chloroform, :bromoform, :bromodichloromethane, :dibromichloromethane
  def initialize(h)
    h.each {|k,v| send("#{k}=",v)}
  end

  def factor(factor_weight)
    ['chloroform', 'bromoform', 'bromodichloromethane', 'dibromichloromethane'].inject(0){|sum, k| sum += (self.send("#{k}") * factor_weight.send("#{k}_weight"))}
  end

  def to_hash(include_factors = false, factor_weights)
  	hash = self.instance_variables.each_with_object({}) { |var,hash| hash[var.to_s.delete("@")] = self.instance_variable_get(var) }
  	if include_factors
  		factor_weights.each { |w| hash.store("factor_#{w.id}", self.factor(w)) }
  	end
  	hash
  end

  def to_s
  	"Id: #{id}, Site: #{site}, Chloroform (mg/L): #{chloroform}, Bromoform (mg/L): #{bromoform}, Bromodichloromethane (mg/L): #{bromodichloromethane}, Dibromichloromethane (mg/L): #{dibromichloromethane}"
  end
end