class CreateJoinTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :join_technologies do |t|
      t.references :User, foreign_key: true
      t.references :Technology, foreign_key: true

      t.timestamps
    end
  end
end
