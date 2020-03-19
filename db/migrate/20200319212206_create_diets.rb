class CreateDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.date :data_inicial
      t.date :data_final
      t.float :peso_atual
      t.float :peso_ideal
      t.float :altura

      t.timestamps
    end
  end
end
