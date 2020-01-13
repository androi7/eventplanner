class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date    :date
      t.string  :location
      t.string  :title
      t.text    :description
      t.string  :image
      t.string  :album
      t.integer :admin
      t.integer :category_id
      t.timestamps
    end
  end
end
