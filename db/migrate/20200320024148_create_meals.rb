class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :tipo_refeicao
      t.time :horario
      t.text :descricao
      t.references :diet, foreign_key: true

      t.timestamps
    end
  end
end
