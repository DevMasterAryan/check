class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :developer_id, :integer
  	add_column :users, :project_owner, :boolean, default: :false
  	add_column :users, :developer, :boolean, default: :false
  end
end
