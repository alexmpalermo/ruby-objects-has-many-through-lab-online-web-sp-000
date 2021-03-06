class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(date, patient)
    appt = Appointment.new(patient, date, self)
  end 
  
  def appointments
    Appointment.all.select {|x| x.doctor == self}
  end 
  
  def patients
    appointments.collect {|x| x.patient}
  end 
  
  
  
  
  
end