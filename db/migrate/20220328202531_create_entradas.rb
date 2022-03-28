class CreateEntradas < ActiveRecord::Migration[6.1]
  def change
    create_table :entradas do |t|
      t.integer :precio
      t.string :categoria
      t.text :fechaslimite , array: true, default: []
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
