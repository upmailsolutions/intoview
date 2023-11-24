class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
