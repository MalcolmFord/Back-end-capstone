class CreateAttendingEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :attending_events do |t|
      t.references :User, foreign_key: true
      t.references :Upcoming_event, foreign_key: true

      t.timestamps
    end
  end
end
