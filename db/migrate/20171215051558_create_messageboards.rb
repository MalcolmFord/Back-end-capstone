class CreateMessageboards < ActiveRecord::Migration[5.1]
  def change
    create_table :messageboards do |t|
      t.references :User, foreign_key: true
      t.references :Technology, foreign_key: true
      t.string :post

      t.timestamps
    end
  end
end
