class CreateTranslateAnimals < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        Animal.create_translation_table!({ title: :string, name: :string }, { migrate_data: false })
      end
      dir.down do
        Animal.drop_translation_table! migrate_data: true
      end
    end
  end
end
