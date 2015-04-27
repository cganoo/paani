class WaterSample
  attr_accessor :id, :site, :chloroform, :bromoform, :bromodichloromethane, :dibromichloromethane
  def initialize(h)
    h.each {|k,v| send("#{k}=",v)}
  end

  def factor(factor_weight)
    ['chloroform', 'bromoform', 'bromodichloromethane', 'dibromichloromethane'].inject(0){|sum, k| sum += (self.send("#{k}") * factor_weight.send("#{k}_weight"))}
  end

  def to_s
  	"Id: #{id}, Site: #{site}, Chloroform (mg/L): #{chloroform}, Bromoform (mg/L): #{bromoform}, Bromodichloromethane (mg/L): #{bromodichloromethane}, Dibromichloromethane (mg/L): #{dibromichloromethane}"
  end
end