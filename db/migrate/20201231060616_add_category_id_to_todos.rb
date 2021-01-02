class AddCategoryIdToTodos < ActiveRecord::Migration[5.0]
  def change
    add_reference :todos, :category, foreign_key: true
  end
end
