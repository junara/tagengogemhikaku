class CreateTranslateVegetables < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        Vegetable.create_translation_table!({ title: :string, name: :string }, { migrate_data: false })
      end
      dir.down do
        Vegetable.drop_translation_table! migrate_data: true
      end
    end
  end
end
