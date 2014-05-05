class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :avatar_url
      t.integer :owner_id

      t.timestamps
    end
  end
end
