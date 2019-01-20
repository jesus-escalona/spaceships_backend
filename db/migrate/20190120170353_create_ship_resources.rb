class CreateShipResources < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_resources do |t|
      t.references :ship, foreign_key: true
      t.references :resource, foreign_key: true

      t.timestamps
    end
  end
end
