class CreateInspirations < ActiveRecord::Migration[5.2]
  def change
    create_table :inspirations do |t|
      t.string :title
      t.string :category
      t.string :location
      t.date   :date
      t.string :image
      t.string :album 
      t.timestamps
    end
  end
end
