class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :location
      t.datetime :date
      t.integer :event_id

      t.timestamps
    end
  end
end
