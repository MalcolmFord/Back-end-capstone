class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.references :User, foreign_key: true
      t.string :Name
      t.text :Description

      t.timestamps
    end
  end
end
