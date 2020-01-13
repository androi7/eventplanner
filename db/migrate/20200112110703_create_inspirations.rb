class CreateInspirations < ActiveRecord::Migration[5.2]
  def change
    create_table :inspirations do |t|

      t.timestamps
    end
  end
end
