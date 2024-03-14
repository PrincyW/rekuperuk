class AddDefaultValueToLike < ActiveRecord::Migration[7.1]
  def change
    change_column_default :likes, :content, default: false
  end
end
