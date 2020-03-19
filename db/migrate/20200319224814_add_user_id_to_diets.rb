class AddUserIdToDiets < ActiveRecord::Migration[5.2]
  def change
    add_column :diets, :user_id, :integer
  end
end
