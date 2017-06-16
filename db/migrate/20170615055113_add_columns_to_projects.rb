class AddColumnsToProjects < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :start_date, :date
  	add_column :projects, :end_date, :date
  	add_column :projects, :status, :string, default: :open

  end
end
