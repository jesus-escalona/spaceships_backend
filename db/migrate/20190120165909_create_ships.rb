class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
    	t.string :email
      	t.string :name
      	t.string :color
      	t.integer :health, default: 1000
      	t.integer :ship_size, default: 0.1
      	t.string :weapon, default: "gun"
      	t.integer :weapon_lvl, default: 1
      	t.boolean :status, default: true

      t.timestamps
    end
  end
end
