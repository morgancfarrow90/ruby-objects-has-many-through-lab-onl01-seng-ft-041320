class Patient
  
attr_accessor :name, :doctor, :appointment
  
@@all = []
  
def initialize(name)
  @name = name
end

end