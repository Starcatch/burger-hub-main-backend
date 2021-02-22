class CreateOrderBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :order_burgers do |t|
      t.integer :order_id
      t.integer :burger_id

      t.timestamps
    end
  end
end
