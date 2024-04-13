class CreateDrafts < ActiveRecord::Migration[7.1]
  def change
    create_table :drafts do |t|
      t.text :prompt
      t.string :image
      t.string :model
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :drafts, :prompt
    add_index :drafts, :image
    add_index :drafts, :model
  end
end
