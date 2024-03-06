class CreateAcquisitions < ActiveRecord::Migration[7.1]
  def change
    create_table :acquisitions do |t|
      t.string :date_time
      t.references :wig, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
