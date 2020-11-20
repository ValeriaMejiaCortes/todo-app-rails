class FixTitleColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :todos, :tittle, :title
  end
end
