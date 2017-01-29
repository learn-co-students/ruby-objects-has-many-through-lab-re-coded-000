class Patient
  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name=name
    @appointments=[]
    @doctors=[]
  end
#add
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient =self
    @doctors << appointment.doctor
  end
end
