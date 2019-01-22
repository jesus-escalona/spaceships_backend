class ChangeHealthInShips < ActiveRecord::Migration[5.2]
  def change
    change_column_default :ships, :health, 1000
  end
end
