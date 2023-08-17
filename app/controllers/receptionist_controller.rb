class ReceptionistController < ApplicationController
    def new
        @new_patient_record = PatientRecord.new
    end
end