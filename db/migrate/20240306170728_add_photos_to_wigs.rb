class AddPhotosToWigs < ActiveRecord::Migration[7.1]
  def change
    add_column :wigs, :photo1, :string
    add_column :wigs, :photo2, :string
    add_column :wigs, :photo3, :string
  end
end
