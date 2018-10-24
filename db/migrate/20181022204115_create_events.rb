class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      
      t.text :content
      t.string :event_name
      t.string :address
      t.string :picture
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
