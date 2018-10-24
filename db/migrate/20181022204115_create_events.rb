class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

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
