class AddContactToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :contact, :text
  end
end
