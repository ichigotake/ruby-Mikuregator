class AddIndexToRepositories < ActiveRecord::Migration
  def change
    add_index :repositories, :full_name, :unique => true
  end
end
