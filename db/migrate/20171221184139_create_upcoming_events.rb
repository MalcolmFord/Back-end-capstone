class CreateUpcomingEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :upcoming_events do |t|
      t.references :User, foreign_key: true
      t.references :Technology, foreign_key: true
      t.string :post
      t.date :date
      t.string :location
      t.time :time

      t.timestamps
    end
  end
end
