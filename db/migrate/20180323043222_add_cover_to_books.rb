class AddCoverToBooks < ActiveRecord::Migration[5.1]
  def change
    add_attachment :books, :cover
  end
end
