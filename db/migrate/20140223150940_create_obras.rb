class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.string :titulo
      t.string :autor
      t.text :descripcion
      t.integer :calificacion
      t.string :imagen

      t.timestamps
    end
  end
end
