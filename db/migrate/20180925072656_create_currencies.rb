class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|

      t.timestamps
    end
  end
end
