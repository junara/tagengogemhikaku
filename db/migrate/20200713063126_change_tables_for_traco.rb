class ChangeTablesForTraco < ActiveRecord::Migration[6.0]
  def change
    remove_column :animals, :title
    remove_column :vegetables, :title

    add_column :animals, :title_ja, :string
    add_column :animals, :title_en, :string
    add_column :vegetables, :title_ja, :string
    add_column :vegetables, :title_en, :string
  end
end
