class FactorWeight
  attr_accessor :id, :chloroform_weight, :bromoform_weight, :bromodichloromethane_weight, :dibromichloromethane_weight
  def initialize(h)
    h.each {|k,v| send("#{k}=",v)}
  end

  def to_s
  	"Id: #{id}, Chloroform weight: #{chloroform_weight}, Bromoform weight: #{bromoform_weight}, Bromodichloromethane weight: #{bromodichloromethane_weight}, Dibromichloromethane weight: #{dibromichloromethane_weight}"
  end
end