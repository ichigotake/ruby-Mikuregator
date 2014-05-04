class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :avatar_image_url

      t.timestamps
    end
  end
end
