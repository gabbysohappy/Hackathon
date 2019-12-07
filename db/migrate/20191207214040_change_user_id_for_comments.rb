class ChangeUserIdForComments < ActiveRecord::Migration[6.0]
  def change
  	change_table :comments do |t|
  		t.remove :user_id
  	end
  end
end
