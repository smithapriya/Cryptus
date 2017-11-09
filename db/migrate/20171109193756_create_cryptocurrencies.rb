class CreateCryptocurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptocurrencies do |t|
      t.float :marketcap
      t.float :price
      t.integer :nodes
      t.float :volume

      t.timestamps
    end
  end
end
