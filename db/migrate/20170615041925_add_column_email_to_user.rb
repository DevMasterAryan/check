class AddColumnEmailToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :email, :string
  	add_column :users, :password_digest, :string
  	add_column :users, :image, :string
  end
end
