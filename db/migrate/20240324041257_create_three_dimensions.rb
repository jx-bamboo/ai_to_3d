class CreateThreeDimensions < ActiveRecord::Migration[7.1]
  def change
    create_table :three_dimensions do |t|
      t.string :title
      t.text :description
      t.string :thumbnail
      t.string :schematic
      t.string :litematic
      t.string :nbt
      t.string :glb
      t.string :obj
      t.string :stl
      t.string :fbx
      t.string :usd
      t.integer :draft_mark
      t.integer :status, default: 0, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :three_dimensions, :title
    add_index :three_dimensions, :description
    add_index :three_dimensions, :thumbnail
    add_index :three_dimensions, :schematic
    add_index :three_dimensions, :litematic
    add_index :three_dimensions, :nbt
  end
end
