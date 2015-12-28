class CreateCharityCities < ActiveRecord::Migration
  def change
    create_table :charity_cities do |t|
      t.references :city, index: true, foreign_key: true
      t.references :charity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
