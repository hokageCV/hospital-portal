class ReceptionistController < ApplicationController
    def new
        @new_patient_record = PatientRecord.new
    end

    def create
        @new_patient_record = PatientRecord.new(patient_params)
        if @new_patient_record.save
          redirect_to receptionist_path, notice: "Patient record created successfully."
        else
          render :new
        end
      end
    
      private
    
      def patient_params
        params.require(:patient_record).permit(:name, :age)
      end
end