class AddOverviewToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :overview, :text
  end
end
