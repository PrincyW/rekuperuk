class CreateTextures < ActiveRecord::Migration[7.1]
  def change
    create_table :textures do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
