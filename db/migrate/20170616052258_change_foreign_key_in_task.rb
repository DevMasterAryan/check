class ChangeForeignKeyInTask < ActiveRecord::Migration[5.1]
  def change
  	rename_column :tasks, :developer_id, :owner_id
  end
end
