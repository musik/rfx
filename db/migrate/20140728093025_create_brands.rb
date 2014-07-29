class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :slug
      t.integer :priority,default: 10
      t.integer :items_count,default: 0

      t.timestamps
    end
    add_column :items,:brand_id,:integer
  end
end
