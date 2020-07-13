class DeleteTitleName < ActiveRecord::Migration[6.0]
  def change
    remove_column :animals, :title
    remove_column :vegetables, :title
    remove_column :animals, :name
    remove_column :vegetables, :name
  end
end
