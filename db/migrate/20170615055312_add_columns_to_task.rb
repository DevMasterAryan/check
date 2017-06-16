class AddColumnsToTask < ActiveRecord::Migration[5.1]
  def change
  	add_column :tasks, :start_date, :date
  	add_column :tasks, :end_date, :date

  end
end
