class ChangeTypeColumnName < ActiveRecord::Migration
  def change
  	rename_column :posts, :type, :commitment
  end
end
