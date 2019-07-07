require "pry"

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #  given a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    # puts appointment
    # binding.pry
  end

  # has many appointments
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    #   binding.pry
    end
  end

  # has many doctors through appointments
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    #   binding.pry
    end
  end

  def self.oldest_patient
    oldest_age = 0
    oldest_patient = nil
    self.all.each do |patient|
      if patient.age > oldest_age
        oldest_age = patient.age
        oldest_patient = patient
      end
    end
    oldest_patient
  end
end

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

new_app = Appointment.new("January 1", "George", "Dr. Mark")
p new_app

joe = Patient.new("Joe")
p joe

p joe.new_appointment("dr.melfi", "5/15")
