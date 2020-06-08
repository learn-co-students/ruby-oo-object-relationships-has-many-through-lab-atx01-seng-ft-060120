require "pry"

class Doctor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def appointments
        my_appointments = Appointment.all.select do |appointment|
            appointment.doctor == self
        end
        my_appointments
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments = Appointment.all.select do |appointment|
            appointment.doctor == self
        end
        patients = appointments.map do |appointment|
            appointment.patient
        end
        patients
    end





    def self.all
        @@all
    end






end