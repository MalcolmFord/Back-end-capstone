class CreatePersonalPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_posts do |t|
      t.references :User, foreign_key: true
      t.text :Post

      t.timestamps
    end
  end
end
