class Appointment
  
@@all = []

attr_accessor :date, :patient, :doctor

def initialize (date, patient, doctor)
  @date = date
end