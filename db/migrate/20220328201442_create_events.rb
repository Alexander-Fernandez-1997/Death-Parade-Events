class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :nombre ,null: false, default: ""
      t.string :direccion ,null: false, default: ""
      t.integer :capacidad ,null: false
      t.date :fecha
      t.time :horarioinicio
      t.time :horariofinal
      t.string :banner ,null: false
      t.string :imgname ,null: false
      t.text :imgs , array: true, default: []
      t.string :imgfondo ,null: false
      t.string :colorprimario
      t.string :colorsecundario
      t.boolean :finalizado ,null: false
      t.text :descripcion ,null: false
      t.text :sponsors , array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
