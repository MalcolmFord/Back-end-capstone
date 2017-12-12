class CreatePersonalComments < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_comments do |t|
      t.references :personal_post, foreign_key: true
      t.references :User, foreign_key: true
      t.text :Comment

      t.timestamps
    end
  end
end
