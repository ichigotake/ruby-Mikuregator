class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.integer :owner_author_id
      t.string :full_name
      t.string :description
      t.string :html_url
      t.string :repository_url
      t.integer :host_type

      t.timestamps
    end
  end
end
