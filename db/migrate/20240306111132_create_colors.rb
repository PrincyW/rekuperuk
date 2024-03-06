class CreateColors < ActiveRecord::Migration[7.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :hexa

      t.timestamps
    end
  end
end
