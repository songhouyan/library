class ChangeBooksColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :state, :comment
  end
end
