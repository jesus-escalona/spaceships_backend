class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :color
      t.integer :health

      t.timestamps
    end
  end
end
