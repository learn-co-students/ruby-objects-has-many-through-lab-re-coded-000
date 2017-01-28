class Appointment
  attr_accessor :data, :doctor , :patient
def initialize(data,doctor)
  @data = data
  @doctor = doctor
  doctor.add_appointment(self)
end

end
