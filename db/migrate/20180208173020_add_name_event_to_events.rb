class AddNameEventToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :name_event, :string
  end
end
