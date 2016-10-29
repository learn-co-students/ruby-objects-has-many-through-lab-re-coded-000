class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments =[]
    @doctors =[]
  end
  def add_appointment(appo)
    @appointments << appo
    appo.patient = self
  end
  def doctors
    self.appointments.collect do |appo|
      appo.doctor
    end
  end
end
