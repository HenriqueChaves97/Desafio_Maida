class ChangePesoAtualToBeFloatInWeighings < ActiveRecord::Migration[5.2]
  def change
    change_column :weighings, :peso_atual, :float
  end
end
