class Doctor
  attr_accessor :name ,:appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments .push(appointment)
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |e|
      e.patient
    end
  end
end
