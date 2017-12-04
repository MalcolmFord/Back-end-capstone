class CreateTechnologyPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :technology_posts do |t|
      t.references :Technology, foreign_key: true
      t.references :User, foreign_key: true
      t.text :Post

      t.timestamps
    end
  end
end
