class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :cat_id
      t.text :content
      t.string :event_name
      t.string :address
      t.string :picture
      t.integer :time

      t.timestamps
    end
  end
end
