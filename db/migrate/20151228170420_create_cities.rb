class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :state
      t.string :country
      t.string :continent

      t.timestamps null: false
    end
  end
end
