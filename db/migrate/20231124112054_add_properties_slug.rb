class AddPropertiesSlug < ActiveRecord::Migration[7.1]
  def change
    add_column :properties, :slug, :string
  end
end
