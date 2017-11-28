class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
  	change_column :posts, :quantity, :float
  	change_column :posts, :price, :float

  end
end
