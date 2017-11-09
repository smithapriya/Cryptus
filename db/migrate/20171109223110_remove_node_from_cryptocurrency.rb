class RemoveNodeFromCryptocurrency < ActiveRecord::Migration[5.1]
  def change
    remove_column :cryptocurrencies, :nodes, :integer
  end
end
