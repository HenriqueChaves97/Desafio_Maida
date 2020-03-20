class CreateWeighings < ActiveRecord::Migration[5.2]
  def change
    create_table :weighings do |t|
      t.date :data
      t.integer :peso_atual

      t.timestamps
    end
  end
end
