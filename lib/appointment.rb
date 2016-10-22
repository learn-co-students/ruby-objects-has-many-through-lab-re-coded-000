class Appointment
  attr_accessor :date, :doctor, :patient
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
def add_patient(patient)
  patient.add_appointment(self)
end
end
