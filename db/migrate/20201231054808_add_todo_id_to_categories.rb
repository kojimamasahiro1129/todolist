class AddTodoIdToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :todo, foreign_key: true
  end
end
