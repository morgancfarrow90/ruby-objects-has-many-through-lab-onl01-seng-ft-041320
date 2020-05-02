class Doctor

attr_accessor :name, :appointment, :patient 
  
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def appointments
  Appointments.all.select do |appointment|
    appointment.doctor == self
  end
end

def new_appointment(date, patient)
  Appointment.new(date, self, patient)

  
end