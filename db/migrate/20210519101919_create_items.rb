class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :category_id
      t.integer :item_condition_id
      t.integer :country_id
      t.references :user, foreign_key: true
      t.integer :nation_id
      t.string :city
      t.text :text
      t.timestamps
    end
  end
end
