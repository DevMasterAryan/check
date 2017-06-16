class AddColumnStatusToTask < ActiveRecord::Migration[5.1]
  def change
  	add_column :tasks, :status ,:string, default: :assigned 
  end
end
