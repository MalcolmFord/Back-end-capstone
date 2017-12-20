class AddColumnName < ActiveRecord::Migration[5.1]
  def change
    add_column :technologies, :photo_url, :string
  end
end
