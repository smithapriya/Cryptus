class AddNameToCryptocurrency < ActiveRecord::Migration[5.1]
  def change
    add_column :cryptocurrencies, :name, :string
  end
end
