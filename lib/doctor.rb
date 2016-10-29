class Doctor
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments =[]
  end
  def add_appointment(appointment)
    @appointments << appointment   #add this appo to its appos array
    appointment.doctor = self      #tell this appothat it belongs to this doctor itself
  end
  def patients
    self.appointments.collect do |appo|
      appo.patient
    end
  end
end
