class RenameStringColumnToProperties < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :string, :cost
  end
end
