class Doctor
 attr_accessor :name
 #attr_reader :appointments
 def initialize(name)
  @name=name
  @appointments=[]
 end
 def add_appointment(appointment)
  @appointments << appointment
  appointment.doctor=self
 end
 def appointments
    @appointments
  end
 def patients
   @appointments.map{|a| a.patient}
 end
end
