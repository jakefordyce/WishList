class AddNotNullToComments < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :user_id, false
    change_column_null :comments, :list_id, false
  end
end
