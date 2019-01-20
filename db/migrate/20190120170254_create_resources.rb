class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :resource_type
      t.integer :level

      t.timestamps
    end
  end
end
