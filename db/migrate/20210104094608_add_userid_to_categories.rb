class AddUseridToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :user, foreign_key: true
  end
  # add_index :categories, [:user_id, :created_at]

end
