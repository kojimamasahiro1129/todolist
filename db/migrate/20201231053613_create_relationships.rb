class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :todo_id
      t.integer :category_id
      t.timestamps
    end
  end
end

