class CreateTransaccions < ActiveRecord::Migration[6.1]
  def change
    create_table :transaccions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :entrada, null: false, foreign_key: true
      t.boolean :pagada

      t.timestamps
    end
  end
end
