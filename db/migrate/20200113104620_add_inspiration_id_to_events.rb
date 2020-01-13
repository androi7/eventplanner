class AddInspirationIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :inspiration_id, :integer
  end
end
