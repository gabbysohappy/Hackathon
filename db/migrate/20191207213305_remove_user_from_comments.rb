class RemoveUserFromComments < ActiveRecord::Migration[6.0]
  def change

    remove_foreign_key :comments, column: :user_id
  end
end
