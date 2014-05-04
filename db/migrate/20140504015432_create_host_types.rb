class CreateHostTypes < ActiveRecord::Migration
  def change
    create_table :host_types do |t|

      t.timestamps
    end
  end
end
