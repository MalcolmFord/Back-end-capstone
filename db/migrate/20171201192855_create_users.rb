class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :First_name
      t.string :Last_name
      t.date :DOB
      t.string :email, unique: true
      t.string :password_digest
      t.string :token
      t.string :Profile_photo_url

      t.timestamps
    end
  end
end
