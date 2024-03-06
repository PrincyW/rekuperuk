class CreateWigs < ActiveRecord::Migration[7.1]
  def change
    create_table :wigs do |t|
      t.references :color, null: false, foreign_key: true
      t.references :texture, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.references :length, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
