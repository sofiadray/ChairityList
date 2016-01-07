class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :charities, :real?, :real
  end
end
