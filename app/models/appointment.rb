class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def formatted_appt
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M") 
  end

  def appt_doctor
    self.doctor.name 
  end

  def appt_patient
    self.patient.name
  end

end
