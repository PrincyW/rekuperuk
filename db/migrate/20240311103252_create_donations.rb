class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.string :donator_email
      t.string :description
      t.string :photos

      t.timestamps
    end
  end
end
