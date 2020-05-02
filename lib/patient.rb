class Patient
  
attr_accessor :name, :doctor, :appointment
  
@@all = []
  
def initialize(name)
  @name = name
end

def new_appointment(date, doctor)
  Appointment.new(date, self, doctor)
end

def self.all
  @@all
end

def appointments
  Appointments.all.select do |appointment|
    appointment.patient == self
  end
end

def doctors
  appointments.map do |
  
end