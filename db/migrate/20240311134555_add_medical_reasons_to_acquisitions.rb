class AddMedicalReasonsToAcquisitions < ActiveRecord::Migration[7.1]
  def change
    add_column :acquisitions, :medical_reasons, :boolean
  end
end
