class AddUserIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :user_id, :integer
  end
end
