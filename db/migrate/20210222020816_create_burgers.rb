class CreateBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :burgers do |t|
      t.string :name
      t.string :description
      t.string :status
      t.string :image
      t.string :url
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
