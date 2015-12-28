class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :image
      t.string :website
      t.boolean :real?
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
