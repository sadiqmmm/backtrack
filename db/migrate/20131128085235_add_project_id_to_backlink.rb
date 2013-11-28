class AddProjectIdToBacklink < ActiveRecord::Migration
  def change
  	add_column :backlinks, :keyword, :string
  	add_reference :backlinks, :projects, index: true
  end
end
