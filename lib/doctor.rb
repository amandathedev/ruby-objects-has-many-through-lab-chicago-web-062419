require "pry"

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

#   def self.most_appointments
#     @@all.max_by do |appointment|
#       appointment.doctor.count
#     end
#     p most_appointments
#   end
end

lucy = Doctor.new("Lucy")
p lucy
jim = Doctor.new("Jim")
p Doctor.all
