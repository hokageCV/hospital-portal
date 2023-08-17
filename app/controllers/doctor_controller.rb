class DoctorController < ApplicationController
    def index
        @patient_records = PatientRecord.all
    end
end