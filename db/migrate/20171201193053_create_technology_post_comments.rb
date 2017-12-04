class CreateTechnologyPostComments < ActiveRecord::Migration[5.1]
  def change
    create_table :technology_post_comments do |t|
      t.references :Technology, foreign_key: true
      t.references :User, foreign_key: true
      t.text :Comment

      t.timestamps
    end
  end
end
