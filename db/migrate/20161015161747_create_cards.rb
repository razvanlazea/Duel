class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|

      t.timestamps null: false
      t.text :name
      t.text :type
      t.text :race
      t.text :civilization
      t.integer :manaCost
      t.integer :manaValue
      t.integer :power
      t.text :abilities, array: true, default: []
    end
  end
end
