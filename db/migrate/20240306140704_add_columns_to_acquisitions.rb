class AddColumnsToAcquisitions < ActiveRecord::Migration[7.1]
  def change
    add_column :acquisitions, :delivery, :boolean, null: false, default: false
    add_column :acquisitions, :delivery_name, :string
    add_column :acquisitions, :delivery_address, :string
    add_column :acquisitions, :delivery_city, :string
    add_column :acquisitions, :delivery_zipcode, :string
  end
end
