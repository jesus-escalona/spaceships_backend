class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :ship, foreign_key: true
      t.integer :score, default: 0

      t.timestamps
    end
  end
end
