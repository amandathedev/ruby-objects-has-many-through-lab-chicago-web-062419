require 'pry'

class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    # Consistent order of parameters
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

end


# Join table
# new_app
# new_app = Appointment.new("January 1", "George", "Dr. Mark")
# p 


array = ["dog", "cat", "monkey", "cat"]
array.mode