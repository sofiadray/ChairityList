class AddUserIdToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :user_id, :integer
  end
end
