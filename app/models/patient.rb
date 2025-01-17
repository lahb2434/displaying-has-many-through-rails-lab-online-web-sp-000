class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments

    def appt_size
      self.appointments.size 
    end

end
