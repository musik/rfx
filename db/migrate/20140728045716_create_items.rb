class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :sn
      t.string :name
      t.decimal :price,precision: 10,scale: 2
      t.decimal :price_vip,precision: 10,scale: 2
      t.integer :year,limit: 4
      t.string :spec
      t.string :made_by
      t.string :unit,limit: 6
      t.integer :moq
      t.integer :stock

      t.timestamps
    end
  end
end
