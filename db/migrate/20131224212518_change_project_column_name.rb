class ChangeProjectColumnName < ActiveRecord::Migration
  def change
    rename_column :projects, :name, :title
  end
end
